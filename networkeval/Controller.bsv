package Controller;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;
import LayerEval::*;
import BRAM::*;
import UART::*;

`define WEIGHT_ADDR_SZ     4     // bit size of address space
`define MAX_WEIGHT_IDX     10     // bit size of address space
`define WEIGHT_WORD_SZ     16   // bit size for each address slot
`define FEAT_ADDR_SZ       3     // bit size of address space
`define FEAT_WORD_SZ       8     // bit size for each address slot
`define MAX_FEAT_IDX       7     // bit size of address space

function BRAMRequest#(Bit#(`FEAT_ADDR_SZ), Bit#(`FEAT_WORD_SZ)) makeFeatRequest(
    Bool write, Bit#(`FEAT_ADDR_SZ) addr, Bit#(`FEAT_WORD_SZ) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

function Action msg(String tag, dtype val) provisos (FShow#(dtype));
    $display($time, "     %m.", tag, "\t", fshow(val));
endfunction

interface ControllerIfc#( numeric type n_pe, numeric type n_cols );
    method Action recv_input( );
    method Action start();
    method ActionValue#(Vector#(TAdd(`MAX_FEAT_IDX,1), FixedPoint#(2,6)) get_output();
    method Action reset_evaluator();
    method Bool is_done();
endinterface

module mkController( ControllerIfc#(n_pe, n_cols) );

    LayerEval#(n_pe, n_cols) le <= mkLayerEval();
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(`WEIGHT_ADDR_SZ)) weight_addr <- mkReg(0);

    method Action recv_input( FixedPoint#(2,6) inp );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
    endmethod

    method Action start();
    endmethod

    method ActionValue#(Vector#(TAdd(`MAX_FEAT_IDX,1), FixedPoint#(2,6)) get_output();
    endmethod

    method Action reset_evaluator();
        step <= 0;
        weight_addr <= 0;
        le.reset_evaluator();
    endmethod

    method Bool is_done();
        return step == 2;
    endmethod

endmodule

endpackage: Controller
