package PE;

import FixedPoint::*;
import Vector::*;

function Bit#(1) threeand( Bit#(1) a, Bit#(1) b, Bit#(1) c );
    return {a & b & c};
endfunction

// PE interface

interface PeIfc#( numeric type n);
    method Action reset_pe();
    method Action load_weights( Vector#(n, Bit#(2)) weights);
    method Action add_input( FixedPoint#(2,6) inp);
    method Action do_nonlinearity_fn();
    method Action multiply_constant( FixedPoint#(2,6) constant);
    method Action add_constant( FixedPoint#(2,6) constant );
    method ActionValue#( Vector#(n, Bit#(2)) ) read_weights();
    method ActionValue#( FixedPoint#(2,6) ) get_partial_sum();
    method ActionValue#( Bool ) is_ready();
endinterface

// Adder modules
module mkPE( PeIfc#(n) );

    Vector#(n, Reg#(Bit#(2))) weight_regs <- replicateM(mkReg(0));
    Reg#(FixedPoint#(2,6)) partialSum <- mkReg(0);
    Reg#(UInt#(TAdd#(TLog#(n),1))) step <- mkReg(0);

    method ActionValue#( Vector#(n, Bit#(2)) ) read_weights();
        return readVReg(weight_regs);
        // Vector#(n, Bit#(2)) weights = replicate( 0 );
        // for(Integer i = 0; i < valueOf(n); i=i+1) begin
        //     weights[i] = weight_regs[i];
        // end
        // return weights;
    endmethod

    method Action load_weights( Vector#(n, Bit#(2)) weights);
        for(Integer i = 0; i < valueOf(n); i=i+1) begin
            weight_regs[i] <= weights[i];
        end
    endmethod

    method Action reset_pe();
        partialSum <= 0;
        step <= 0;
    endmethod

    method ActionValue#( FixedPoint#(2,6) ) get_partial_sum();
        return partialSum;
    endmethod

    method Action do_nonlinearity_fn();
        partialSum <= partialSum < 0 ? 0 : partialSum;
    endmethod

    method Action multiply_constant( FixedPoint#(2,6) constant );
        partialSum <= partialSum * constant;
    endmethod

    method Action add_constant( FixedPoint#(2,6) constant );
        partialSum <= partialSum + constant;
    endmethod

    // -1 = 0b11
    // 1 = 0b01
    method Action add_input( FixedPoint#(2,6) inp);
        if ( (weight_regs[step][0] & weight_regs[step][1]) == 1) begin
            Bit#(8) inp_bits = pack(inp);
            partialSum <= partialSum + unpack((~inp_bits)+1);
        end else if(weight_regs[step][0] == 1) begin
            partialSum <= partialSum + inp;
        end
        step <= step + 1;
    endmethod

    method ActionValue#( Bool ) is_ready();
        return step == fromInteger(valueOf(n));
    endmethod
endmodule

endpackage: PE
