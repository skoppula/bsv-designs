import Standard::*;
// Tests AReg, AVArith, VectorOps, Trace

module test();
    let f1 <- mkAReg(mkFIFO);
    let f2 <- mkAReg(mkFIFO);
    let init_done <- mkReg(False);

    let f1rd = toARead(f1);
    let f2wr = toWrite(asIfc(f2));

    mkConnection(asIfc(f1rd), asIfc(f2wr));

    rule init (!init_done);
        Vector#(4, UInt#(4)) v = vector(1, 2, 3, 4);
        f1 <= v;
        init_done <= True;
    endrule

    rule client_side;
        let v <- f2 + 1; // AVArith and Vector Addition
        f1 <= v;
        trace("Vector", v);
        trace("First", select(v, 0));
        $display("%t %b %m", $time, v);
        if (v[0] == 12) $finish;
    endrule
endmodule
