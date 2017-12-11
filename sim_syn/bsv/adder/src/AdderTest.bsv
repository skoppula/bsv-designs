import Standard::*;
import Randomizable::*;
import Adder::*;

typedef Client#(T2#(UInt#(sz), UInt#(sz)), UInt#(sz)) AdderStimulus#(numeric type sz);

module mkAdderStimulus(AdderStimulus#(sz));
  let rnd_a <- mkGenericRandomizer;
  let rnd_b <- mkGenericRandomizer;
  let a <- mkSizedFIFO(4);
  let b <- mkSizedFIFO(4);

  Reg#(Bool) init <- mkReg(False);

  rule do_init( !init);
    init <= True;
    rnd_a.cntrl.init();
    rnd_b.cntrl.init();
  endrule

  interface Put response;
    method Action put(UInt#(sz) x);
      let c = a.first + b.first;
      if(c != x) begin
        $display("FAIL: out: %d + %d = %d == %d", a.first, b.first, c, x);
      end
      /* else begin
        $display("PASS: out: %d + %d = %d == %d", a.first, b.first, c, x);
      end */
      a.deq; b.deq;
    endmethod
  endinterface

  interface Get request;
    method ActionValue#(Tuple2#(UInt#(sz), UInt#(sz))) get;
      let a_ <- rnd_a.next;
      let b_ <- rnd_b.next;
      a.enq(a_);
      b.enq(b_);
      return tuple2(a_, b_);
    endmethod
  endinterface
endmodule

(* no_default_clock, no_default_reset *)
module mkAdderTest(Empty);
  let clk <- mkAbsoluteClock(0, 1600);
  let rstn <- mkInitialReset(2, clocked_by clk);

  let dut <- mkAdder32(clocked_by clk, reset_by rstn);
  AdderStimulus#(32) stimulus <- mkAdderStimulus(clocked_by clk, reset_by rstn);

  mkConnection(dut, stimulus);

  let fin <- mkFin(1000, clocked_by clk, reset_by rstn);
endmodule

