import FIFO::*;
import Ticker::*;
import Constants::*;

interface RxFIFO#(type dtype);
    method Action enq(dtype x);
    method Action deq;
    method dtype first;
    method Action clear;
    method Bool almost_full;
endinterface

// Sized FIFO with an almost_full output
module mkRxFIFO(RxFIFO#(dtype)) provisos(Bits#(dtype, dsize));
    FIFO#(dtype) rx_f <- mkSizedFIFO(8);
    Reg#(UInt#(4)) r_count <- mkReg(0);
    PulseWire enq_w <- mkPulseWire;
    PulseWire deq_w <- mkPulseWire;
    PulseWire clear_w <- mkPulseWire;

    rule upd_count (clear_w || (enq_w != deq_w));
        r_count <= case (True)
            clear_w: 0;
            enq_w: (r_count + 1);
            default: (r_count - 1);
        endcase;
    endrule

    method enq(d) = action rx_f.enq(d); enq_w.send; endaction;
    method deq = action rx_f.deq; deq_w.send; endaction;
    method first = rx_f.first;
    method clear = action rx_f.clear; clear_w.send; endaction;
    method almost_full = r_count >= 4;
endmodule

typedef enum {WAIT, START, DATA, PARITY, STOP} State deriving (Bits, Eq);

interface UART_Rx#(type dtype);
    (* always_ready *)
    method Bit#(1) rts;
    (* always_enabled *)
    method Action rxd(Bit#(1) data);

    method Action deq;
    method dtype first;
    method Action clear;

    method Errors errors;
endinterface

// Receive side of UART
module mkUART_Rx (Config conf, UART_Rx#(dtype) ifc)
    provisos(Bits#(dtype, dsize), Log#(dsize, csize));

    Wire#(Bit#(1)) r_rxd <- mkBypassWire;

    RxFIFO#(dtype) rx_f <- mkRxFIFO;
    Reg#(Bit#(dsize)) curr_rx <- mkRegU;
    Reg#(Bool) curr_rx_valid <- mkReg(False);

    Reg#(State) state <- mkReg(WAIT);
    Reg#(UInt#(csize)) bit_count <- mkReg(0);
    UInt#(csize) max_count = fromInteger(valueOf(dsize) - 1);

    Reg#(Bit#(1)) parity_bit <- mkReg(0);

    Reg#(Bool) r_parity_error <- mkReg(False);
    Reg#(Bool) r_overrun_error <- mkReg(False);
    Reg#(Bool) r_framing_error <- mkReg(False);

    let ticker <- mkTicker(conf.divider);
    let tick = ticker.tick;

    rule write_data ((state == START || state == STOP) && curr_rx_valid);
        rx_f.enq(unpack(curr_rx));
        curr_rx_valid <= False;
    endrule

    Reg#(Bit#(1)) r_rxd_old <- mkRegU;

    rule rxd_old;
        r_rxd_old <= r_rxd;
    endrule

    rule wait_for_start (state == WAIT && r_rxd == start_bit && r_rxd_old == stop_bit);
        if (conf.divider != 1) begin
            state <= START;
            ticker.center;
        end
        else begin
            state <= DATA;
            parity_bit <= conf.parity == ODD? 1: 0;
        end
    endrule

    function Action warn(String stmt) = $fdisplay(stderr, "Warning in %m at time %t: ", $stime, stmt);

    rule start (state == START && tick);
        if (r_rxd != start_bit) begin
            warn("Illegal start bit detected. Check baudrates.");
            r_framing_error <= True;
            state <= WAIT;
        end
        else begin
            state <= DATA;
            parity_bit <= conf.parity == ODD? 1: 0;
        end
    endrule

    Reg#(Bool) last_stop <- mkReg(False);

    rule data (state == DATA && tick);
        curr_rx <= truncateLSB({r_rxd, curr_rx});
        parity_bit <= parity_bit ^ r_rxd;

        if (bit_count == max_count) begin
            bit_count <= 0;
            if (conf.parity == NONE) begin
                state <= STOP;
                curr_rx_valid <= True;
            end
            else begin
                state <= PARITY;
            end
        end
        else begin
            bit_count <= bit_count + 1;
            if (bit_count == 0 && curr_rx_valid) begin
                warn("Valid data begin overwritten.");
                curr_rx_valid <= False;
                r_overrun_error <= True;
            end
        end
        last_stop <= !conf.two_stop_bits;
    endrule

    rule parity (state == PARITY && tick);
        if (parity_bit != r_rxd) begin
            warn("Parity error. Dropping data.");
            r_parity_error <= True;
        end
        else begin
            curr_rx_valid <= True;
        end
        state <= STOP;
    endrule

    rule stop (state == STOP && tick);
        if (r_rxd != stop_bit) begin
            warn("Illegal stop bit detected.");
            r_framing_error <= True;
        end
        if (last_stop)
            state <= WAIT;
        last_stop <= True;
    endrule

    method rts = rx_f.almost_full? 1: 0; // RTS is active low
    method rxd = r_rxd._write;
    method first = rx_f.first;
    method deq = rx_f.deq;
    method clear = rx_f.clear;

    method errors = Errors {
        parity_error: r_parity_error,
        overrun_error: r_overrun_error,
        framing_error: r_framing_error
    };
endmodule
