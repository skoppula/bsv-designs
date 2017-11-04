import Vector::*;
import Randomizable::*;
import FixedPoint::*;
import Controller::*;
import StmtFSM::*;
import Controller::*;

(* synthesize *)
module mkTbController();
    Reg#(Bit#(32)) cycle1 <- mkReg(0);
    ControllerIfc controller <- mkController();

    rule test_one (cycle1 == 0);
        cycle1 <= cycle1 + 1;
    endrule

    rule test_end (cycle1 > 0 );
        $finish;
    endrule
endmodule
