import FIFO::*;
import FixedPoint::*;
import Vector::*;

import AudioProcessorTypes::*;
import FilterCoefficients::*;
import Multiplier::*;

// The FIR Module Definition
module mkFIRFilter (AudioProcessor);

    FIFO#(Sample) infifo <- mkFIFO();
    FIFO#(Sample) outfifo <- mkFIFO();

    Vector#(8, Reg#(Sample)) r <- replicateM(mkReg(0));
    Vector#(9, Multiplier) multipliers <- replicateM(mkMultiplier());
    Reg#(Bool) submit <- mkReg(False);

    rule process if (!submit);
        $display("got sample: %h", infifo.first());
        Sample sample = infifo.first();
        infifo.deq();

        multipliers[0].putOperands(c[0], sample);
        for (Integer i = 0; i < 8; i = i+1) begin
            multipliers[i+1].putOperands(c[i+1], r[i]);
        end

        r[0] <= sample;
        for (Integer i = 0; i < 7; i = i+1) begin
            r[i+1] <= r[i];
        end

        submit <= True;
    endrule

    rule getMultiplication if (submit);
        FixedPoint#(16,16) accumulate <- multipliers[0].getResult();
        for (Integer i = 1; i < 9; i = i+1) begin
            let x <- multipliers[i].getResult();
            accumulate = accumulate + x;
        end

        submit <= False;
        outfifo.enq(fxptGetInt(accumulate));
    endrule

    method Action putSampleInput(Sample in);
        infifo.enq(in);
    endmethod

    method ActionValue#(Sample) getSampleOutput();
        outfifo.deq();
        return outfifo.first();
    endmethod

endmodule

