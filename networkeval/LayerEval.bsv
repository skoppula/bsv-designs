package LayerEval;

import FixedPoint::*;
import StmtFSM::*;
import Vector::*;
import PE::*;

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
endinterface

// Adder modules
module mkLayerEval( LayerEvalIfc#(n_pe, n_cols) );

    Vector#(n_pe, PeIfc#(n_cols)) pe_vec <- replicateM(mkPE());
    Reg#(UInt#(8)) step <- mkReg(0);
    Reg#(UInt#(4)) layer_idx <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) pos_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) neg_const <- mkReg(0);
    Reg#(FixedPoint#(2, 6)) bias <- mkReg(0);

    rule feed_inputs (step == 1);
        step <= step + 1;
    endrule

    rule multiply_constants (step == 2);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].multiply_constants(pos_const, neg_const);
        end
        step <= step + 1;
    endrule

    rule combine (step == 3);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].combine();
        end
        step <= step + 1;
    endrule

    rule add_bias (step == 4);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_constant(bias);
        end
        step <= step + 1;
    endrule

    rule nonlinearity (step == 5);
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].nonlinearity();
        end
        step <= step + 1;
    endrule

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
        return step == 6;
    endmethod
endmodule

endpackage: LayerEval
