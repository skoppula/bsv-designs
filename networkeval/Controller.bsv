package Controller;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;
import LayerEval::*;
import BRAM::*;
import UART::*;

`define N_WEIGHTS          8     
`define N_FEATS            8
`define PREC_INT           2
`define PREC_DEC           6

`define UART_BIT_WIDTH 8

(* synthesize *)
module mkUARTSpec#(Config cfg)(UART#(Bit#(`UART_BIT_WIDTH)));
  let ifc();
  mkUART _UARTSpec(cfg, ifc);
  return ifc;
endmodule

function BRAMRequest#(Bit#(addr_sz), Bit#(word_sz)) makeRequest(
    Bool write, Bit#(addr_sz) addr, Bit#(word_sz) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

function Action msg(String tag, dtype val) provisos (FShow#(dtype));
    $display($time, "     %m.", tag, "\t", fshow(val));
endfunction

interface ControllerIfc;
    (* always_ready, always_enabled *)
    interface UARTPins uart_pins;
    method Action recv_input();
    method ActionValue#(Bool) recv_input_is_done();
    method Action start();
    // method ActionValue#(Vector#(`N_FEAT, FixedPoint#(2,6))) get_output();
    method Action reset_evaluator();
    method Bool is_done();
    method Errors uart_errors;
endinterface

module mkController#(Config cfg)( ControllerIfc );

    let uart <- mkUARTSpec(cfg);

    LayerEvalIfc#(`N_WEIGHTS, `N_FEATS, `PREC_INT, `PREC_DEC) le <- mkLayerEval();
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(TLog#(TAdd#(`N_WEIGHTS,3)))) weight_addr <- mkReg(0);
    Reg#(UInt#(TLog#(`N_FEATS))) feat_addr <- mkReg(0);
    Reg#(Bit#(TAdd#(prec_int, prec_dec))) feature <- mkReg(?);

    Stmt recv_inp_stmt =
    (seq
        for (i<=0; i < `N_FEATS; i<=i+1)
	seq
            delay(10);
            $display("recv input iter %d", i);
            action
                let v <- uart.rx;
                feature <= {v, 'b0}; // feature <= feature[`IN_SIZE-1:`IN_SIZE/2] + v;
            endaction
            action
                le.load_input_bram(pack(feature), feat_addr);
                feat_addr <= feat_addr + 1;
            endaction
	    delay(90);
	endseq
    endseq);
    FSM recv_inp_fsm <- mkFSM(recv_inp_stmt);

    method Action recv_input();
        recv_inp_fsm.start;
    endmethod

    method ActionValue#(Bool) recv_input_is_done();
        return recv_inp_fsm.done;
    endmethod

    method Action start();
    endmethod

    method Action reset_evaluator();
        step <= 0;
        weight_addr <= 0;
        le.reset_evaluator();
    endmethod

    method Bool is_done();
        // uart.tx(feature2[`IN_SIZE-1:`IN_SIZE/2]);
        return step == 2;
    endmethod

    interface UARTPins uart_pins = uart.pins;
    method uart_errors = uart.errors;
endmodule

endpackage: Controller
