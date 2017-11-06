package LayerEval;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;
import BRAM::*;

function BRAMRequest#(Bit#(addr_sz), Bit#(word_sz)) makeRequest(
    Bool write, Bit#(addr_sz) addr, Bit#(word_sz) data);
    return BRAMRequest{ write:write, responseOnWrite:False, address: addr, datain: data };
endfunction

interface LayerEvalIfc#( numeric type n_pes, numeric type n_cols, numeric type prec_int, numeric type prec_dec);
    method Action start_layer( UInt#(TLog#(TAdd#(n_pes,3))) start_weight_addr );
    // method will:
    //  a. read weights from BRAM (into registers?). 
    //  b. load weights into PEs
    //  1. read inputs from BRAM (into registers?).
    //  2. feed inputs into PEs
    //  3. call final method (non-linearity) on PEs
    //  4. get final results from PEs, save into registers
    //  5. save output to BRAM
    //  6. done

    method Action load_input_into_pes( FixedPoint#(prec_int,prec_dec) inp );
    method Action load_weights_into_pes( Vector#(n_pes, Vector#(n_cols, Bit#(2))) weights );
    method Action load_aux_weights( FixedPoint#(prec_int,prec_dec) pos, FixedPoint#(prec_int,prec_dec) neg, FixedPoint#(prec_int,prec_dec) b);
    method Action load_input_into_bram( FixedPoint#(prec_int,prec_dec) inp, UInt#(TLog#(n_cols)) f_addr);

    method ActionValue#( Tuple2#(Vector#(n_pes, FixedPoint#(prec_int,prec_dec)), Vector#(n_pes, FixedPoint#(prec_int,prec_dec))) ) get_partial_sums();
    method Action reset_evaluator();
    method Bool is_ready();
    method Action start_nonlinearity_test();

    method Action read_feat_bram_req( UInt#(TLog#(n_cols)) f_addr );
    method ActionValue#(Bit#(TAdd#(prec_int, prec_dec))) read_feat_bram();
endinterface

module mkLayerEval( LayerEvalIfc#(n_pes, n_cols, prec_int, prec_dec) );

    Vector#(n_pes, PeIfc#(n_cols, prec_int, prec_dec)) pe_vec <- replicateM(mkPE());
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(TLog#(TAdd#(n_pes,3)))) weight_addr <- mkReg(0);
    Reg#(UInt#(TLog#(n_cols))) feat_addr <- mkReg(0);
    Reg#(Bool) waiting <- mkReg(False);
    Reg#(FixedPoint#(prec_int,prec_dec)) pos_const <- mkReg(0);
    Reg#(FixedPoint#(prec_int,prec_dec)) neg_const <- mkReg(0);
    Reg#(FixedPoint#(prec_int,prec_dec)) bias <- mkReg(0);

    BRAM_Configure weightCfgRAM = defaultValue;
    BRAM_Configure featCfgRAM = defaultValue;
    weightCfgRAM.loadFormat = tagged Binary "weights.txt";
    featCfgRAM.loadFormat = tagged Binary "features.txt";
    BRAM1Port#(Bit#(TLog#(n_cols)), Bit#(TAdd#(prec_int, prec_dec))) featureBRAM <- mkBRAM1Server(featCfgRAM);
    BRAM1Port#(Bit#(TLog#(TAdd#(n_pes,3))), Bit#(TMul#(n_cols,2))) weightBRAM <- mkBRAM1Server(weightCfgRAM);

    rule feed_weights_request (step == 1 && !waiting);
	weightBRAM.portA.request.put(makeRequest(False, pack(weight_addr), 0));
        waiting <= True;
    endrule

    rule feed_weights_recieve (step == 1 && waiting);
	Bit#(TMul#(n_cols,2)) recv_bits <- weightBRAM.portA.response.get();
        if(weight_addr < fromInteger(valueOf(n_pes))) begin
            Vector#(n_cols, Bit#(2)) weights = reverse(unpack(recv_bits));
            pe_vec[weight_addr].load_weights(weights);
        end else if(weight_addr == fromInteger(valueOf(n_pes))) begin
            Bit#(TAdd#(prec_int, prec_dec)) tmp = recv_bits[valueOf(TSub#(TAdd#(prec_int, prec_dec),1)):0];
            pos_const <= unpack(tmp);
        end else if(weight_addr == fromInteger(valueOf(TAdd#(n_pes,1)))) begin
            Bit#(TAdd#(prec_int, prec_dec)) tmp = recv_bits[valueOf(TSub#(TAdd#(prec_int, prec_dec),1)):0];
            neg_const <= unpack(tmp);
        end else begin
            Bit#(TAdd#(prec_int, prec_dec)) tmp = recv_bits[valueOf(TSub#(TAdd#(prec_int, prec_dec),1)):0];
            bias <= unpack(tmp);
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
	Bit#(TAdd#(prec_int, prec_dec)) recv_bits <- featureBRAM.portA.response.get();
        FixedPoint#(prec_int,prec_dec) inp = unpack(recv_bits);
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
        if(feat_addr == fromInteger(valueof(TSub#(n_cols,1)))) begin
            step <= step + 1;
        end
        waiting <= False;
        feat_addr <= feat_addr + 1;
    endrule

    rule multiply_constants (step == 3);
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].multiply_constants(pos_const, neg_const);
        end
        step <= step + 1;
    endrule

    rule combine (step == 4);
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].combine();
        end
        step <= step + 1;
    endrule

    rule add_bias (step == 5);
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].add_constant(bias);
        end
        step <= step + 1;
    endrule

    rule nonlinearity (step == 6);
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].nonlinearity();
        end
        step <= step + 1;
        feat_addr <= 0;
    endrule

    rule clear_regs (step == 7);
        neg_const <= 0;
        bias <= 0;
        FixedPoint#(prec_int,prec_dec) tmp <- pe_vec[feat_addr].get_pos_partial_sum();
        pos_const <= tmp;
        step <= step + 1;
    endrule

    rule save_outputs_req (step == 8);
        FixedPoint#(prec_int,prec_dec) tmp <- pe_vec[feat_addr].get_pos_partial_sum();
        featureBRAM.portA.request.put(makeRequest(True, pack(feat_addr), pack(tmp)));
        if(feat_addr == fromInteger(valueof(TSub#(n_cols,1)))) begin
            step <= step + 1;
        end
        feat_addr <= feat_addr + 1;
    endrule

    method Action load_input_into_pes( FixedPoint#(prec_int,prec_dec) inp );
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].add_input(inp);
        end
    endmethod

    method Action load_input_into_bram( FixedPoint#(prec_int,prec_dec) inp, UInt#(TLog#(n_cols)) f_addr);
        featureBRAM.portA.request.put(makeRequest(True, pack(f_addr), pack(inp)));
    endmethod

    method Action load_weights_into_pes( Vector#(n_pes, Vector#(n_cols, Bit#(2))) weights );
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].load_weights(weights[i]);
        end
    endmethod

    method Action load_aux_weights( FixedPoint#(prec_int,prec_dec) pos, FixedPoint#(prec_int,prec_dec) neg, FixedPoint#(prec_int,prec_dec) b);
        pos_const <= pos;
        neg_const <= neg;
        bias <= b;
    endmethod

    method Action start_layer( UInt#(TLog#(TAdd#(n_pes,3))) start_weight_addr );
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
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            pe_vec[i].reset_pe();
        end
    endmethod

    method ActionValue#( Tuple2#(Vector#(n_pes, FixedPoint#(prec_int,prec_dec)), Vector#(n_pes, FixedPoint#(prec_int,prec_dec))) ) get_partial_sums();
        Vector#(n_pes, FixedPoint#(prec_int,prec_dec)) psums = replicate( 0.0 );
        Vector#(n_pes, FixedPoint#(prec_int,prec_dec)) nsums = replicate( 0.0 );
        for(Integer i = 0; i < valueOf(n_pes); i=i+1) begin
            FixedPoint#(prec_int,prec_dec) tmp <- pe_vec[i].get_pos_partial_sum();
            psums[i] = tmp;
            FixedPoint#(prec_int,prec_dec) tmp2 <- pe_vec[i].get_neg_partial_sum();
            nsums[i] = tmp2;
        end
        return tuple2(psums, nsums);
    endmethod

    method Bool is_ready();
        return step == 9;
    endmethod

    method Action read_feat_bram_req( UInt#(TLog#(n_cols)) f_addr );
	featureBRAM.portA.request.put(makeRequest(False, pack(f_addr), 0));
    endmethod

    method ActionValue#(Bit#(TAdd#(prec_int, prec_dec))) read_feat_bram();
	Bit#(TAdd#(prec_int, prec_dec)) recv_bits <- featureBRAM.portA.response.get();
        return recv_bits;
    endmethod

endmodule

endpackage: LayerEval
