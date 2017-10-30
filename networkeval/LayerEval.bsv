package LayerEval;

import FixedPoint::*;
import Vector::*;
import PE::*;

function Bit#(1) sample_function( Bit#(1) a, Bit#(1) b, Bit#(1) c );
    return {a & b & c};
endfunction

// PE interface

interface LayerEvalIfc#( numeric type n_pe, numeric type n_cols );
    method Action reset_evaluator();
    // method will:
    //  1. call reset() on all PEs

    method Action start_layer( Int#(4) layer_idx );
    // method will:
    //  1. read weights from BRAM (into registers?). 
    //  2. load weights into PEs
    method Action load_weights_into_pes( Vector#(n_pe, Vector#(n_cols, Bit#(2))) inp );

    method Action load_input_into_pes( Vector#(n_cols, FixedPoint#(2,6)) inp );
    //  3. read inputs from BRAM (into registers?).
    //  4. feed inputs into PEs

    method Action call_nonlinearity_on_pes( Vector#(n_cols, FixedPoint#(2,6)) inp );
    method Action multiply_constant_on_pes( FixedPoint#(2,6) constant );
    method Action add_constant_on_pes( FixedPoint#(2,6) constant );
    //  5. call final method (non-linearity) on PEs

    method ActionValue#( Vector#(n_pe, FixedPoint#(2,6)) ) get_partial_sums();
    //  6. get final results from PEs, save into registers
    //  7. save output to BRAM
    //  8. done

    method ActionValue#( Bool ) is_ready();
endinterface

// Adder modules
module mkLayerEval( LayerEvalIfc#(n_pe, n_cols) );

    Vector#(n_pe, PeIfc#(n_cols)) pe_vec <- replicateM(mkPE());
    Reg#(UInt#(8)) step <- mkReg(0);

    method Action reset_evaluator();
        step <= 0;
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].reset_pe();
        end
    endmethod

    method ActionValue#( Vector#(n_pe, FixedPoint#(2,6)) ) get_partial_sums();
        Vector#(n_pe, FixedPoint#(2,6)) psums = replicate( 0.0 );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            FixedPoint#(2,6) tmp <- pe_vec[i].get_partial_sum();
            psums[i] = tmp;
        end
        return psums;
    endmethod

    method Action start_layer( Int#(4) layer_idx );
    endmethod

    // method will:
    //  1. read weights from BRAM (into registers?).
    //  2. load weights into PEs
    method Action load_weights_into_pes( Vector#(n_pe, Vector#(n_cols, Bit#(2))) weights );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].load_weights(weights[i]);
        end
    endmethod

    method Action load_input_into_pes( Vector#(n_cols, FixedPoint#(2,6)) inp );
    endmethod
    //  3. read inputs from BRAM (into registers?).
    //  4. feed inputs into PEs

    method Action call_nonlinearity_on_pes( Vector#(n_cols, FixedPoint#(2,6)) inp );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].do_nonlinearity_fn();
        end
    endmethod

    method Action multiply_constant_on_pes( FixedPoint#(2,6) constant );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].multiply_constant( constant );
        end
    endmethod

    method Action add_constant_on_pes( FixedPoint#(2,6) constant );
        for(Integer i = 0; i < valueOf(n_pe); i=i+1) begin
            pe_vec[i].add_constant( constant );
        end
    endmethod
    //  5. call final methods (non-linearity, constant multiply, etc) on PEs

    method ActionValue#( Bool ) is_ready();
        return step == 8;
    endmethod
endmodule

endpackage: LayerEval
