import Standard::*;

typedef Server#(T2#(UInt#(sz), UInt#(sz)), UInt#(sz)) Adder#(numeric type sz);

module mkAdder(Adder#(sz));
  let a <- mkLFIFO;
  let b <- mkLFIFO;
  let c <- mkLFIFO;

  rule add;
    c.enq(a.first+b.first);
    a.deq; b.deq;
  endrule

  interface Put request;
    method Action put(Tuple2#(UInt#(sz), UInt#(sz)) x);
      match {.a_, .b_} = x;
      a.enq(a_);
      b.enq(b_);
    endmethod
  endinterface

  interface Get response = toGet(c);
endmodule

(* synthesize *)
module mkAdder32(Adder#(32));
  (* hide *)
  let m <- mkAdder;
  return m;
endmodule

(* synthesize *)
module mkAdder64(Adder#(64));
  (* hide *)
  let m <- mkAdder;
  return m;
endmodule

(* synthesize *)
module mkAdder128(Adder#(128));
  (* hide *)
  let m <- mkAdder;
  return m;
endmodule

(* synthesize *)
module mkAdder256(Adder#(256));
  (* hide *)
  let m <- mkAdder;
  return m;
endmodule
