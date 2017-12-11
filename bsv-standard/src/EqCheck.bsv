interface EqCheck#(type d);
    method Bool eq (d x1, d x2);
endinterface

module mkEqCheckBSV (EqCheck#(d)) provisos (Eq#(d));
    method eq (x1, x2) = (x1 == x2);
endmodule

import "BVI" module eq_check (EqCheck#(d)) provisos (Bits#(d, d_sz));
    parameter DSZ = valueOf(d_sz);
    method eq eq (x1, x2);
    default_clock clk();
    default_reset rst();
    schedule eq C eq;
    path (x1, eq);
    path (x2, eq);
endmodule

function module#(EqCheck#(d)) mkEqCheck provisos (Bits#(d, d_sz), Eq#(d))
 = genVerilog? eq_check: mkEqCheckBSV;
