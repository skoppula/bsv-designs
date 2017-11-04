package LayerEval;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;
import BRAM::*;

`define FEAT_ADDR_SZ       3     // bit size of address space
`define FEAT_WORD_SZ       8     // bit size for each address slot
`define MAX_FEAT_IDX       7     // bit size of address space

function BRAMRequest#(Bit#(addr_sz), Bit#(word_sz)) makeRequest(
    Bool write, Bit#(addr_sz) addr, Bit#(word_sz) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

interface LayerEvalIfc#( numeric type n_pe, numeric type n_cols );
    method Action start_layer( UInt#(TLog#(TAdd#(n_pe,3))) start_weight_addr );
    // method will:
    //  a. read weights from BRAM (into registers?). 
    //  b. load weights into PEs
    //  1. read inputs from BRAM (into registers?).
    //  2. feed inputs into PEs
    //  3. call final method (non-linearity) on PEs
    //  4. get final results from PEs, save into registers
    //  5. save output to BRAM
    //  6. done

    method Action load_input_into_pes( FixedPoint#(2,6) inp );
    method Action load_weights_into_pes( Vector#(n_pe, Vector#(n_cols, Bit#(2))) weights );
    method Action load_aux_weights( FixedPoint#(2, 6) pos, FixedPoint#(2, 6) neg, FixedPoint#(2, 6) b);

    method ActionValue#( Tuple2#(Vector#(n_pe, FixedPoint#(2,6)), Vector#(n_pe, FixedPoint#(2,6))) ) get_partial_sums();
    method Action reset_evaluator();
    method Bool is_ready();
    method Action start_nonlinearity_test();

    method Action read_feat_bram_req( UInt#(`FEAT_ADDR_SZ) f_addr );
    method ActionValue#(Bit#(`FEAT_WORD_SZ)) read_feat_bram();
endinterface

module mkLayerEval( LayerEvalIfc#(n_pe, n_cols) );

    Vector#(n_pe, PeIfc#(n_cols)) pe_vec <- replicateM(mkPE());
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(TLog#(TAdd#(n_pe,3)))) weight_addr <- mkReg(0);
    Reg#(UInt#(`FEAT_ADDR_SZ)) feat_addr <- mkReg(0);
    Reg#(Bool) waiting <- mkReg(False);
    Reg#(FixedPoint#(2, 6)) pos_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) neg_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) bias <- mkReg(0);

    BRAM_Configure weightCfgRAM = defaultValue;
    BRAM_Configure featCfgRAM = defaultValue;
    weightCfgRAM.loadFormat = tagged Binary "weights.txt";
    featCfgRAM.loadFormat = tagged Binary "features.txt";
    BRAM1Port#(Bit#(`FEAT_ADDR_SZ), Bit#(`FEAT_WORD_SZ)) featureBRAM <- mkBRAM1Server(featCfgRAM);
    BRAM1Port#(Bit#(TLog#(TAdd#(n_pe,3))), Bit#(TMul#(n_cols,2))) weightBRAM <- mkBRAM1Server(weightCfgRAM);

    rule feed_weights_request (step == 1 && !waiting);
	weightBRAM.portA.request.put(makeRequest(False, pack(weight_addr), 0));
        waiting <= True;
    endrule

    rule feed_weights_recieve (step == 1 && waiting);
	Bit#(TMul#(n_cols,2)) recv_bits <- weightBRAM.portA.response.get();
        if(weight_addr < fromInteger(valueOf(n_pe))) begin
            Vector#(n_cols, Bit#(2)) weights = reverse(unpack(recv_bits));
            pe_vec[weight_addr].load_weights(weights);
        end else if(weight_addr == fromInteger(valueOf(n_pe))) begin
            pos_const <= unpack(recv_bits[7:0]);
        end else if(weight_addr == fromInteger(valueOf(TAdd#(n_pe,1)))) begin
            neg_const <= unpack(recv_bits[7:0]);
        end else begin
            bias <= unpack(recv_bits[7:0]);
            step <= step + 1;
        end
        waiting <= False;
        weight_addr <= weight_addr + 1;
    endrule

    rule feed_inputs_request (step == 2 && !waiting);
	featureBRAM.portA.request.put(makeRequest(False, pack(feat_addr), 0));
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
        feat_addr <= 0;
    endrule

    rule clear_regs (step == 7);
        neg_const <= 0;
        bias <= 0;
        FixedPoint#(2,6) tmp <- pe_vec[feat_addr].get_pos_partial_sum();
        pos_const <= tmp;
        step <= step + 1;
    endrule

    rule save_outputs_req (step == 8);
        FixedPoint#(2,6) tmp <- pe_vec[feat_addr].get_pos_partial_sum();
        pos_const <= tmp;
        featureBRAM.portA.request.put(makeRequest(True, pack(feat_addr), pack(pos_const)));
        if(feat_addr == `MAX_FEAT_IDX) begin
            step <= step + 1;
        end
        feat_addr <= feat_addr + 1;
    endrule

    method Action load_input_into_pes( FixedPoint#(2,6) inp );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
    endmethod

    method Action load_weights_into_pes( Vector#(n_pe, Vector#(n_cols, Bit#(2))) weights );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].load_weights(weights[i]);
        end
    endmethod

    method Action load_aux_weights( FixedPoint#(2, 6) pos, FixedPoint#(2, 6) neg, FixedPoint#(2, 6) b);
        pos_const <= pos;
        neg_const <= neg;
        bias <= b;
    endmethod

    method Action start_layer( UInt#(TLog#(TAdd#(n_pe,3))) start_weight_addr );
        step <= 1;
        weight_addr <= start_weight_addr;
    endmethod

    method Action start_nonlinearity_test();
        step <= 3;
    endmethod

    method Action reset_evaluator();
        weight_addr <= 0;
        feat_addr <= 0;
        waiting <= False;
        pos_const <= 0;
        neg_const <= 0;
        bias <= 0;
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
        return step == 9;
    endmethod

    method Action read_feat_bram_req( UInt#(`FEAT_ADDR_SZ) f_addr );
	featureBRAM.portA.request.put(makeRequest(False, pack(f_addr), 0));
    endmethod

    method ActionValue#(Bit#(`FEAT_WORD_SZ)) read_feat_bram();
	Bit#(`FEAT_WORD_SZ) recv_bits <- featureBRAM.portA.response.get();
        return recv_bits;
    endmethod

endmodule

endpackage: LayerEval
