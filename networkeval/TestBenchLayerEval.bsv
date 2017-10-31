import Vector::*;
import Randomizable::*;
import FixedPoint::*;
import PE::*;
import LayerEval::*;
import StmtFSM::*;

`define PESIZE 8

(* synthesize *)
module mkTbLayerEval();
    Reg#(Bit#(32)) cycle1 <- mkReg(0);
    PeIfc#(8) pe1 <- mkPE();
    LayerEvalIfc#(8, 8) le1 <- mkLayerEval();

    Vector#(8, Vector#(8, Bit#(2))) weights;
    Vector#(8, Bit#(2)) row1 = replicate( 0 );
    Vector#(8, Bit#(2)) row2 = replicate( 0 );
    row1[0] = 1; row1[1] = 2; row1[2] = 2; row1[3] = 0;
    row1[4] = 1; row1[5] = 2; row1[6] = 0; row1[7] = 1;
    row2[0] = 0; row2[1] = 1; row2[2] = 2; row2[3] = 1;
    row2[4] = 0; row2[5] = 1; row2[6] = 0; row2[7] = 1;
    weights[0] = row1; weights[1] = row1; weights[2] = row1; weights[3] = row1;
    weights[4] = row2; weights[5] = row2; weights[6] = row2; weights[7] = row2;
    FixedPoint#(2,6) pos_const = 0.7;
    FixedPoint#(2,6) neg_const = 0.5;
    FixedPoint#(2,6) bias = 0.1;

    Vector#(8, FixedPoint#(2,6)) inputs = replicate( 0.0 );
    inputs[0] = 0.5; inputs[1] = -0.25;
    inputs[2] = 0.25; inputs[3] = -0.1;
    inputs[4] = 0.7; inputs[5] = 0;
    inputs[6] = 0; inputs[7] = -1;

    Reg#(FixedPoint#(2,6)) psum <- mkReg(0.0);

    rule test_one_load_weight (cycle1 == 0);
        le1.load_weights(weights);
        le1.load_aux_weights(pos_const, neg_const, bias);
        cycle1 <= cycle1 + 1;
    endrule

    (* preempts = "test_one_feed_input, (le1_add_bias, le1_multiply_constants, le1_combine, le1_nonlinearity)" *)
    rule test_one_feed_input (cycle1 == 1);
        le1.load_input(inputs[0]);
        cycle1 <= cycle1 + 1;
    endrule

    rule test_one_read_psums (cycle1 == 2);
        Tuple2#(Vector#(8,FixedPoint#(2,6)), Vector#(8,FixedPoint#(2,6))) a <- le1.get_partial_sums();
        Vector#(8, FixedPoint#(2,6)) pos_sum = tpl_1(a);
        Vector#(8, FixedPoint#(2,6)) neg_sum = tpl_2(a);
        if(!(pos_sum[0] == 0.5 && neg_sum[0] == 0 && pos_sum[4] == 0 && neg_sum[4] == 0)) begin
            $display("Failed! Current partial sum outputs:");
            for(Integer i = 0; i < valueOf(8); i=i+1) begin
                fxptWrite(5, pos_sum[i]); $write(" "); fxptWrite(5, neg_sum[i]); $write("\n");
            end
            $finish;
        end else begin
            $display("Passed first partial sum test");
        end
        cycle1 <= cycle1 + 1;
    endrule

    (* preempts = "test_one_feed_input2, (le1_add_bias, le1_multiply_constants, le1_combine, le1_nonlinearity)" *)
    rule test_one_feed_input2 (cycle1 == 3);
        le1.load_input(inputs[1]);
        cycle1 <= cycle1 + 1;
    endrule

    rule test_one_read_psums2 (cycle1 == 4);
        Tuple2#(Vector#(8,FixedPoint#(2,6)), Vector#(8,FixedPoint#(2,6))) a <- le1.get_partial_sums();
        Vector#(8, FixedPoint#(2,6)) pos_sum = tpl_1(a);
        Vector#(8, FixedPoint#(2,6)) neg_sum = tpl_2(a);
        if(!(pos_sum[0] == 0.5 && neg_sum[0] == 0.25 && pos_sum[4] == -0.25 && neg_sum[4] == 0)) begin
            $display("Failed! Current partial sum outputs:");
            for(Integer i = 0; i < valueOf(8); i=i+1) begin
                fxptWrite(5, pos_sum[i]); $write(" "); fxptWrite(5, neg_sum[i]); $write("\n");
            end
            $finish;
        end else begin
            $display("Passed second partial sum test");
        end
        cycle1 <= cycle1 + 1;
    endrule

    rule test_one_nonlinearity (cycle1 == 5);
        le1.start_layer(1);
        cycle1 <= cycle1 + 1;
    endrule

    rule test_one_check_nonlinearity (le1.is_ready() && cycle1 == 6);
        Tuple2#(Vector#(8,FixedPoint#(2,6)), Vector#(8,FixedPoint#(2,6))) a <- le1.get_partial_sums();
        // true answer is 0.575 but 0.56250 because of fixed pt errors
        Vector#(8, FixedPoint#(2,6)) pos_sum = tpl_1(a);
        Vector#(8, FixedPoint#(2,6)) neg_sum = tpl_2(a);
        if(!(pos_sum[0] == 0.5625 && neg_sum[0] == 0.125 && pos_sum[4] == 0 && neg_sum[4] == 0)) begin
            $display("Failed! Current partial sum outputs:");
            for(Integer i = 0; i < valueOf(8); i=i+1) begin
                fxptWrite(5, pos_sum[i]); $write(" "); fxptWrite(5, neg_sum[i]); $write("\n");
            end
            $finish;
        end else begin
            $display("Passed non-linearity test");
        end
        cycle1 <= cycle1 + 1;
    endrule

    rule test_end (cycle1 == 7);
        $finish;
    endrule
endmodule
