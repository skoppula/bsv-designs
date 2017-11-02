interface Ticker;
    method Bool tick;
    method Action center;
endinterface

module mkTicker (d divFactor, Ticker ifc)
    provisos (Bits#(d, d_sz), Literal#(d), Arith#(d), Ord#(d), Eq#(d));
    Reg#(d) counter <- mkReg(0);
    PulseWire do_center <- mkPulseWire;

    rule update_counter;
        if (do_center) begin
            counter <= (divFactor / 2) - 1;
        end
        else begin
            counter <= (counter == 0? divFactor:counter) - 1;
        end
    endrule

    method tick = counter == 0;
    method center = do_center.send;
endmodule
