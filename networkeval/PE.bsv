package PE;

import FixedPoint::*;
import Vector::*;

interface PeIfc#( numeric type n, numeric type prec_int, numeric type prec_dec);
    method Action load_weights( Vector#(n, Bit#(2)) weights);

    method Action add_input( FixedPoint#(prec_int, prec_dec) inp);
    method Action multiply_constants( FixedPoint#(prec_int, prec_dec) pos_constant, FixedPoint#(prec_int, prec_dec) neg_constant );
    method Action combine();
    method Action add_constant( FixedPoint#(prec_int, prec_dec) constant );
    method Action nonlinearity();

    method ActionValue#( FixedPoint#(prec_int, prec_dec) ) get_pos_partial_sum();
    method ActionValue#( FixedPoint#(prec_int, prec_dec) ) get_neg_partial_sum();
    method ActionValue#( Vector#(n, Bit#(2)) ) read_weights();
    method ActionValue#( Bool ) is_ready();
    method Action reset_pe();
endinterface

module mkPE( PeIfc#(n, prec_int, prec_dec) );

    // 01 is positive weight matrix (W[0]), 10 is negative weight matrix (W[1])
    Vector#(n, Reg#(Bit#(2))) weight_regs <- replicateM(mkReg(0));
    Reg#(FixedPoint#(prec_int,prec_dec)) pos_partial_sum <- mkReg(0);
    Reg#(FixedPoint#(prec_int,prec_dec)) neg_partial_sum <- mkReg(0);
    Reg#(UInt#(TAdd#(TLog#(n),1))) step <- mkReg(0);

    method Action load_weights( Vector#(n, Bit#(2)) weights);
        writeVReg(weight_regs, weights);
    endmethod

    method Action add_input( FixedPoint#(prec_int,prec_dec) inp );
        Bit#(1) a = weight_regs[step][0];
        Bit#(1) b = weight_regs[step][1];
        Bit#(TAdd#(prec_int, prec_dec)) c = pack(inp);
        pos_partial_sum <= pos_partial_sum + unpack(c & (a == 0 ? {'0} : {'1}));
        neg_partial_sum <= neg_partial_sum - unpack(c & (b == 0 ? {'0} : {'1}));
        step <= step + 1;
    endmethod

    method Action combine();
        pos_partial_sum <= pos_partial_sum + neg_partial_sum;
    endmethod

    method Action multiply_constants( FixedPoint#(prec_int,prec_dec) pos_constant, FixedPoint#(prec_int,prec_dec) neg_constant );
        pos_partial_sum <= pos_partial_sum * pos_constant;
        neg_partial_sum <= neg_partial_sum * neg_constant;
    endmethod

    method Action add_constant( FixedPoint#(prec_int,prec_dec) constant );
        pos_partial_sum <= pos_partial_sum + constant;
    endmethod

    method Action nonlinearity();
        pos_partial_sum <= pos_partial_sum < 0 ? 0 : pos_partial_sum;
    endmethod

    method ActionValue#( FixedPoint#(prec_int,prec_dec) ) get_pos_partial_sum();
        return pos_partial_sum;
    endmethod

    method ActionValue#( FixedPoint#(prec_int,prec_dec) ) get_neg_partial_sum();
        return neg_partial_sum;
    endmethod

    method ActionValue#( Vector#(n, Bit#(2)) ) read_weights();
        return readVReg(weight_regs);
    endmethod

    method ActionValue#( Bool ) is_ready();
        return step == fromInteger(valueOf(n));
    endmethod

    method Action reset_pe();
        pos_partial_sum <= 0;
        neg_partial_sum <= 0;
        step <= 0;
    endmethod

endmodule

endpackage: PE
