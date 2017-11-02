import Constants::*;
import UART_Tx::*;
import UART_Rx::*;
import GetPut::*;
import Connectable::*;

export Constants::*;
export UART::*;

(* always_ready, always_enabled *)
interface UARTPins;
   method Bit#(1) txd;
   (* prefix = "" *)
   method Action rxd((* port = "rxd" *)Bit#(1) data);
   method Bit#(1) rts;
   (* prefix = "" *)
   method Action cts((* port = "cts" *)Bit#(1) data);
endinterface

instance Connectable#(UARTPins, UARTPins);
    module mkConnection(UARTPins u1, UARTPins u2, Empty ifc);
        rule connect_uart_pins;
            u1.rxd(u2.txd);
            u2.rxd(u1.txd);
            u1.cts(u2.rts);
            u2.cts(u1.rts);
        endrule
    endmodule
endinstance

interface UART#(type dtype);
    interface UARTPins pins;

    method dtype rx_first; // see received byte without popping it
    method ActionValue#(dtype) rx;
    method Action tx(dtype i);
    method Action clear;

    (* always_ready *)
    method Errors errors;
endinterface

instance ToPut#(UART#(dtype), dtype);
    function Put#(dtype) toPut(UART#(dtype) u) = interface Put
        method put = u.tx;
    endinterface;
endinstance

instance ToGet#(UART#(dtype), dtype);
    function Get#(dtype) toGet(UART#(dtype) u) = interface Get
        method get = u.rx;
    endinterface;
endinstance

module mkUART (Config conf, UART#(dtype) ifc) provisos(Bits#(dtype, dsize));
    UART_Rx#(dtype) u_rx <- mkUART_Rx(conf);
    UART_Tx#(dtype) u_tx <- mkUART_Tx(conf);

    interface UARTPins pins;
        method rxd = u_rx.rxd;
        method rts = u_rx.rts;
        method txd = u_tx.txd;
        method cts = u_tx.cts;
    endinterface

    method rx_first = u_rx.first;
    method rx = actionvalue u_rx.deq; return u_rx.first; endactionvalue;
    method tx = u_tx.enq;
    method clear = action u_rx.clear; u_tx.clear; endaction;

    method errors = u_rx.errors;
endmodule
