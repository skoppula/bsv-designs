package LayerEval;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;
import BRAM::*;
import UART::*;

`define WEIGHT_ADDR_SZ     4     // bit size of address space
`define MAX_WEIGHT_IDX     10     // bit size of address space
`define WEIGHT_WORD_SZ     16   // bit size for each address slot
`define FEAT_ADDR_SZ       3     // bit size of address space
`define FEAT_WORD_SZ       8     // bit size for each address slot
`define MAX_FEAT_IDX       7     // bit size of address space

function BRAMRequest#(Bit#(`WEIGHT_ADDR_SZ), Bit#(`WEIGHT_WORD_SZ)) makeWeightRequest(
    Bool write, Bit#(`WEIGHT_ADDR_SZ) addr, Bit#(`WEIGHT_WORD_SZ) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

function BRAMRequest#(Bit#(`FEAT_ADDR_SZ), Bit#(`FEAT_WORD_SZ)) makeFeatRequest(
    Bool write, Bit#(`FEAT_ADDR_SZ) addr, Bit#(`FEAT_WORD_SZ) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

function Action msg(String tag, dtype val) provisos (FShow#(dtype));
    $display($time, "     %m.", tag, "\t", fshow(val));
endfunction


interface LayerEvalIfc#( numeric type n_pe, numeric type n_cols );
    method Action start_layer( UInt#(4) layer_idx );
    // method will:
    //  a. read weights from BRAM (into registers?). 
    //  b. load weights into PEs
    //  1. read inputs from BRAM (into registers?).
    //  2. feed inputs into PEs
    //  3. call final method (non-linearity) on PEs
    //  4. get final results from PEs, save into registers
    //  5. save output to BRAM
    //  6. done

    method Action load_input( FixedPoint#(2,6) inp );
    method Action load_weights( Vector#(n_pe, Vector#(n_cols, Bit#(2))) weights );
    method Action load_aux_weights( FixedPoint#(2, 6) pos, FixedPoint#(2, 6) neg, FixedPoint#(2, 6) b);

    method ActionValue#( Tuple2#(Vector#(n_pe, FixedPoint#(2,6)), Vector#(n_pe, FixedPoint#(2,6))) ) get_partial_sums();
    method Action reset_evaluator();
    method Bool is_ready();
    method Action start_nonlinearity_test();
endinterface

// Adder modules
module mkLayerEval( LayerEvalIfc#(n_pe, n_cols) ) provisos(Bits#(Vector::Vector#(n_cols, Bit#(2)), `WEIGHT_WORD_SZ));

    Vector#(n_pe, PeIfc#(n_cols)) pe_vec <- replicateM(mkPE());
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(`WEIGHT_ADDR_SZ)) weight_addr <- mkReg(0);
    Reg#(UInt#(`FEAT_ADDR_SZ)) feat_addr <- mkReg(0);
    Reg#(Bool) waiting <- mkReg(False);
    Reg#(UInt#(4)) layer_idx <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) pos_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) neg_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) bias <- mkReg(0);

    BRAM_Configure weightCfgRAM = defaultValue;
    BRAM_Configure featCfgRAM = defaultValue;
    weightCfgRAM.loadFormat = tagged Binary "weights.txt";
    featCfgRAM.loadFormat = tagged Binary "features.txt";
    BRAM1Port#(Bit#(`FEAT_ADDR_SZ), Bit#(`FEAT_WORD_SZ)) featureBRAM <- mkBRAM1Server(featCfgRAM);
    BRAM1Port#(Bit#(`WEIGHT_ADDR_SZ), Bit#(`WEIGHT_WORD_SZ)) weightBRAM <- mkBRAM1Server(weightCfgRAM);

    rule feed_weights_request (step == 1 && !waiting);
	weightBRAM.portA.request.put(makeWeightRequest(False, pack(weight_addr), 0));
        waiting <= True;
    endrule

    rule feed_weights_recieve (step == 1 && waiting);
	Bit#(`WEIGHT_WORD_SZ) recv_bits <- weightBRAM.portA.response.get();
        if(weight_addr < (`MAX_WEIGHT_IDX-2)) begin
            Vector#(n_cols, Bit#(2)) weights = reverse(unpack(recv_bits));
            pe_vec[weight_addr].load_weights(weights);
        end else if(weight_addr == (`MAX_WEIGHT_IDX-2)) begin
            pos_const <= unpack(recv_bits[7:0]);
        end else if(weight_addr == (`MAX_WEIGHT_IDX-1)) begin
            neg_const <= unpack(recv_bits[7:0]);
        end else begin
            bias <= unpack(recv_bits[7:0]);
            step <= step + 1;
        end
        waiting <= False;
        weight_addr <= weight_addr + 1;
    endrule

    rule feed_inputs_request (step == 2 && !waiting);
	featureBRAM.portA.request.put(makeFeatRequest(False, pack(feat_addr), 0));
        waiting <= True;
    endrule

    rule feed_inputs_recv (step == 2 && waiting);
	Bit#(`FEAT_WORD_SZ) recv_bits <- featureBRAM.portA.response.get();
        FixedPoint#(2, 6) inp = unpack(recv_bits);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
        if(feat_addr == `MAX_FEAT_IDX) begin
            step <= step + 1;
        end
        waiting <= False;
        feat_addr <= feat_addr + 1;
    endrule

    rule multiply_constants (step == 3);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].multiply_constants(pos_const, neg_const);
        end
        step <= step + 1;
    endrule

    rule combine (step == 4);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].combine();
        end
        step <= step + 1;
    endrule

    rule add_bias (step == 5);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_constant(bias);
        end
        step <= step + 1;
    endrule

    rule nonlinearity (step == 6);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].nonlinearity();
        end
        step <= step + 1;
    endrule

    // rule save_outputs_req (step == 7);
    //     step <= step + 1;
    // endrule

    method Action load_input( FixedPoint#(2,6) inp );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
    endmethod

    method Action load_weights( Vector#(n_pe, Vector#(n_cols, Bit#(2))) weights );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].load_weights(weights[i]);
        end
    endmethod

    method Action load_aux_weights( FixedPoint#(2, 6) pos, FixedPoint#(2, 6) neg, FixedPoint#(2, 6) b);
        pos_const <= pos;
        neg_const <= neg;
        bias <= b;
    endmethod

    method Action start_layer( UInt#(4) layer );
        step <= 1;
        layer_idx <= layer;
    endmethod

    method Action start_nonlinearity_test();
        step <= 3;
    endmethod

    method Action reset_evaluator();
        step <= 0;
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].reset_pe();
        end
    endmethod

    method ActionValue#( Tuple2#(Vector#(n_pe, FixedPoint#(2,6)), Vector#(n_pe, FixedPoint#(2,6))) ) get_partial_sums();
        Vector#(n_pe, FixedPoint#(2,6)) psums = replicate( 0.0 );
        Vector#(n_pe, FixedPoint#(2,6)) nsums = replicate( 0.0 );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            FixedPoint#(2,6) tmp <- pe_vec[i].get_pos_partial_sum();
            psums[i] = tmp;
            FixedPoint#(2,6) tmp2 <- pe_vec[i].get_neg_partial_sum();
            nsums[i] = tmp2;
        end
        return tuple2(psums, nsums);
    endmethod

    method Bool is_ready();
        return step == 7;
    endmethod
endmodule

endpackage: LayerEval
