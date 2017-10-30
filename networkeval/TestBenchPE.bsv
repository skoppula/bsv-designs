import Vector::*;
import Randomizable::*;
import FixedPoint::*;
import PE::*;

`define PESIZE 8

(* synthesize *)
module mkTbPE();
    Reg#(Bit#(32)) cycle1 <- mkReg(0);
    Reg#(Bit#(32)) cycle2 <- mkReg(0);
    Reg#(Bit#(32)) cycle3 <- mkReg(0);
    PeIfc#(8) pe1 <- mkPE();
    PeIfc#(8) pe2 <- mkPE();
    PeIfc#(8) pe3 <- mkPE();

    Vector#(8, Bit#(2)) weights = replicate( 0 );
    weights[0] = 1; weights[1] = 1;
    weights[2] = 3; weights[3] = 0;
    weights[4] = 1; weights[5] = 3;
    weights[6] = 0; weights[7] = 1;

    Vector#(8, FixedPoint#(2,6)) inputs = replicate( 0.0 );
    inputs[0] = 0.5; inputs[1] = -0.25;
    inputs[2] = 0.25; inputs[3] = -0.1;
    inputs[4] = 0.7; inputs[5] = 0;
    inputs[6] = 0; inputs[7] = -1;

    Reg#(FixedPoint#(2,6)) psum <- mkReg(0.0);
    Reg#(FixedPoint#(2,6)) psum2 <- mkReg(0.0);

    rule test_dot_product;
        if(cycle1 == 0) begin
            pe1.load_weights(weights);

        end else if (cycle1 == 1) begin
            pe1.add_input(inputs[cycle1-1]);

        end else if (cycle1 < 10) begin
            if (cycle1 < 9) begin
                pe1.add_input(inputs[cycle1-1]);
            end

            FixedPoint#(2,6) rcvd_ans <- pe1.get_partial_sum();
            FixedPoint#(2,0) weight = unpack(weights[cycle1-2]);
            FixedPoint#(2,6) product = fxptSignExtend(weight)*inputs[cycle1-2];
            psum <= psum + product;

            if((psum + product) != rcvd_ans) begin
                $write("Fail! ");
                fxptWrite(5, inputs[cycle1-2]); $write(" x ");
                fxptWrite(5, weight); $write(" = ");
                fxptWrite(5, product); $write(" result:  ");
                fxptWrite(5, rcvd_ans); $write(" expected:  ");
                fxptWrite(5, psum + product);
                $display();
                $finish;
            end 

        end else begin
            $display("Passed all dot product tests.");
        end
        cycle1 <= cycle1 + 1;
    endrule


    rule test_nonlinearity;
        if(cycle3 == 0) begin
            pe3.load_weights(weights);

        end else if (cycle3 < 9) begin
            pe3.add_input(inputs[cycle3-1]);

        end else if (cycle3 == 9) begin
            pe3.do_nonlinearity_fn();

        end else begin
            FixedPoint#(2,6) rcvd_ans <- pe3.get_partial_sum();
            if(0.0 != rcvd_ans) begin
                $write("Failed nonlinearity!");
            end else begin
                $display("Passed all non-linearity tests.");
            end
        end

        cycle3 <= cycle3 + 1;
    endrule

    rule test_rw_weights(cycle2 < 10);
        if(cycle2 == 0) begin
            pe2.load_weights(weights);
        end else if (cycle2 > 8) begin
            $display("Passed all r/w weight tests.");
        end else begin
            Vector#(8, Bit#(2)) test_ans = replicate( 0 );
            test_ans <- pe2.read_weights();
            if(test_ans[cycle2-1] != weights[cycle2-1]) begin
                $display("Fail! %d vs. %d, cycle2 %d", test_ans[cycle2-1], weights[cycle2-1], cycle2-1);
                $finish;
            end 
        end
        cycle2 <= cycle2 + 1;
    endrule

    rule test_end (cycle3 > 10 && cycle1 > 10 && cycle2 > 8);
        $finish;
    endrule
endmodule
