import FIFOF::*;
import Ticker::*;
import Constants::*;
import ConfigReg::*;

typedef enum {START, DATA, PARITY, STOP} State deriving (Bits, Eq);

interface UART_Tx#(type dtype);
    (* always_ready *)
    method Bit#(1) txd;
    (* always_enabled *)
    method Action cts(Bit#(1) data);

    method Action enq(dtype data);
    method Action clear;
endinterface

// Transmit side of UART
module mkUART_Tx (Config conf, UART_Tx#(dtype) ifc)
    provisos(Bits#(dtype, dsize), Log#(dsize, csize));

    Wire#(Bit#(1)) r_cts <- mkBypassWire;

    FIFOF#(dtype) tx_f <- mkFIFOF;
    Reg#(Bit#(dsize)) curr_tx <- mkRegU;

    Reg#(State) state <- mkReg(STOP);
    Reg#(UInt#(csize)) bit_count <- mkReg(0);
    UInt#(csize) max_count = fromInteger(valueOf(dsize) - 1);
    Reg#(Bit#(1)) parity_bit <- mkReg(0);

    let ticker <- mkTicker(conf.divider);
    let tick = ticker.tick;

    Reg#(Bool) last_stop <- mkReg(True);

    rule stop (tick && state == STOP);
        if (last_stop && r_cts == 0 && tx_f.notEmpty)
            state <= START;
        last_stop <= True;
    endrule

    rule start (tick && state == START);
        state <= DATA;
        curr_tx <= pack(tx_f.first);
        tx_f.deq;

        parity_bit <= conf.parity == ODD? 1: 0;
    endrule

    rule data (tick && state == DATA);
        parity_bit <= parity_bit ^ curr_tx[0];
        curr_tx <= curr_tx >> 1;
        last_stop <= !conf.two_stop_bits;

        if (bit_count == max_count) begin
            state <= conf.parity == NONE? STOP: PARITY;
            bit_count <= 0;
        end
        else begin
            bit_count <= bit_count + 1;
        end
    endrule

    rule parity (tick && state == PARITY);
        state <= STOP;
    endrule

    method txd = case(state)
        STOP: stop_bit;
        START: start_bit;
        DATA: curr_tx[0];
        PARITY: parity_bit;
    endcase;

    method cts = r_cts._write;
    method enq = tx_f.enq;
    method clear = tx_f.clear;
endmodule
