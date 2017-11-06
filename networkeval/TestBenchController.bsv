import Vector::*;
import Randomizable::*;
import FixedPoint::*;
import Controller::*;
import StmtFSM::*;
import Controller::*;

`define BAUD_RATE 115200

(* synthesize *)
module mkTbController();
    Reg#(Bit#(32)) cycle1 <- mkReg(0);
    Integer clk_freq = 66_000_000;
    let cfg = Config {parity:NONE, divider:fromInteger((clk_freq+`BAUD_RATE/2)/`BAUD_RATE), 
                        two_stop_bits:False};   
    ControllerIfc controller <- mkController(cfg);

    rule test_one (cycle1 == 0);
        cycle1 <= cycle1 + 1;
    endrule

    rule test_end (cycle1 > 0 );
        $finish;
    endrule
endmodule
