import Vector::*;
import Randomizable::*;
import FixedPoint::*;
import PE::*;
import LayerEval::*;

`define PESIZE 8

(* synthesize *)
module mkTbLayerEval();
    Reg#(Bit#(32)) cycle1 <- mkReg(0);
    PeIfc#(8) pe1 <- mkPE();
    LayerEvalIfc#(8, 8) le1 <- mkLayerEval();

    Vector#(8, Vector#(8, Bit#(2))) weights;
    Vector#(8, Bit#(2)) row = replicate( 0 );
    row[0] = 1; row[1] = 1; row[2] = 3; row[3] = 0;
    row[4] = 1; row[5] = 3; row[6] = 0; row[7] = 1;
    weights[0] = row; weights[1] = row; weights[2] = row; weights[3] = row;
    weights[4] = row; weights[5] = row; weights[6] = row; weights[7] = row;

    Vector#(8, FixedPoint#(2,6)) inputs = replicate( 0.0 );
    inputs[0] = 0.5; inputs[1] = -0.25;
    inputs[2] = 0.25; inputs[3] = -0.1;
    inputs[4] = 0.7; inputs[5] = 0;
    inputs[6] = 0; inputs[7] = -1;

    Reg#(FixedPoint#(2,6)) psum <- mkReg(0.0);

    rule test_load_weights;
        cycle1 <= cycle1 + 1;
    endrule


    rule test_end (cycle1 > 10);
        $finish;
    endrule
endmodule
