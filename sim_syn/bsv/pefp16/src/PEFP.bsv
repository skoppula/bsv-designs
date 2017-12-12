package PEFP;

import FixedPoint::*;
import Vector::*;

interface PeFpIfc#( numeric type n, numeric type prec_int, numeric type prec_dec, numeric type accum_prec_int, numeric type accum_prec_dec);
    method Action load_weights( Vector#(n, FixedPoint#(accum_prec_int, accum_prec_dec)) weights);

    method Action add_input( FixedPoint#(prec_int, prec_dec) inp);
    method Action add_constant( FixedPoint#(prec_int, prec_dec) constant );
    method Action nonlinearity();

    method ActionValue#( FixedPoint#(prec_int, prec_dec) ) get_partial_sum();
    method ActionValue#( Vector#(n, FixedPoint#(accum_prec_int, accum_prec_dec)) ) read_weights();
    method ActionValue#( Bool ) is_ready();
    method Action reset_pe();
endinterface

// module mkPE256(PeIfc#(256, 2, 6, 24, 24));
(* synthesize *)
module mkPEFP16(PeFpIfc#(8, 2, 6, 8, 8));
  (* hide *)
  let m <- mkPEFP;
  return m;
endmodule

module mkPEFP32(PeFpIfc#(8, 2, 6, 16, 16));
  (* hide *)
  let m <- mkPEFP;
  return m;
endmodule

// prec_int/prec_dec is precision of the inputs
module mkPEFP( PeFpIfc#(n, prec_int, prec_dec, accum_prec_int, accum_prec_dec) ) provisos(Add#(a__, prec_dec, accum_prec_dec), Add#(b__, prec_int, accum_prec_int));

    // 01 is positive weight matrix (W[0]), 10 is negative weight matrix (W[1])
    Vector#(n, Reg#(FixedPoint#(accum_prec_int, accum_prec_dec))) weight_regs <- replicateM(mkReg(0));
    Reg#(FixedPoint#(accum_prec_int,accum_prec_dec)) partial_sum <- mkReg(0);
    Reg#(UInt#(TAdd#(TLog#(n),1))) step <- mkReg(0);

    method Action load_weights( Vector#(n, FixedPoint#(accum_prec_int, accum_prec_dec)) weights);
        writeVReg(weight_regs, weights);
    endmethod

    method Action add_input( FixedPoint#(prec_int,prec_dec) inp );
        FixedPoint#(accum_prec_int, accum_prec_dec) weight_se = fxptSignExtend(weight_regs[step]);
        FixedPoint#(accum_prec_int, accum_prec_dec) inp_se = fxptSignExtend(inp);
        partial_sum <= satPlus(Sat_Bound, partial_sum, weight_se*inp_se);
        step <= step + 1;
    endmethod

    method Action add_constant( FixedPoint#(prec_int,prec_dec) constant );
        partial_sum <= partial_sum + fxptSignExtend(constant);
    endmethod

    method Action nonlinearity();
        partial_sum <= partial_sum < 0 ? 0 : partial_sum;
    endmethod

    method ActionValue#( FixedPoint#(prec_int,prec_dec) ) get_partial_sum();
        return fxptTruncateSat(Sat_Bound, partial_sum);
    endmethod

    method ActionValue#( Vector#(n, FixedPoint#(accum_prec_int, accum_prec_dec)) ) read_weights();
        return readVReg(weight_regs);
    endmethod

    method ActionValue#( Bool ) is_ready();
        return step == fromInteger(valueOf(n));
    endmethod

    method Action reset_pe();
        partial_sum <= 0;
        step <= 0;
    endmethod

endmodule

endpackage: PEFP
