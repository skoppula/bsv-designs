import Standard::*;
import Randomizable::*;
import Compare::*;
import RNSNum::*;

typedef Client#(T2#(UInt#(32), UInt#(32)), UInt#(32)) CompareStimulus;

module mkCompareStimulus(CompareStimulus);
  Randomize#(Bit#(28)) rand_inp1 <- mkGenericRandomizer;
  Randomize#(Bit#(28)) rand_inp2 <- mkGenericRandomizer;
  let a <- mkSizedFIFO(4);
  let b <- mkSizedFIFO(4);
  let golden_answer <- mkSizedFIFO(4);

  Reg#(Bool) init <- mkReg(False);

  rule do_init( !init);
    init <= True;
    rand_inp1.cntrl.init;
    rand_inp2.cntrl.init;
  endrule

  interface Put response;
    method Action put(UInt#(32) x_uint);
      RNSNum x = unpack(pack(x_uint));
      if(golden_answer.first != x) begin
        $display("FAIL comparison");
      end
      a.deq; b.deq; golden_answer.deq;
    endmethod
  endinterface

  interface Get request;
    method ActionValue#(Tuple2#(UInt#(32), UInt#(32))) get;
      Bit#(28) inp1 <- rand_inp1.next;
      Bit#(28) inp2 <- rand_inp2.next;

      RNSNum tmp1;
      tmp1.x1 = (inp1 % 127)[6:0]; tmp1.x1_star = (inp1 % 129)[7:0];
      tmp1.x2 = (inp1 % 255)[7:0]; tmp1.x2_star = (inp1 % 257)[8:0];

      RNSNum tmp2;
      tmp2.x1 = (inp2 % 127)[6:0]; tmp2.x1_star = (inp2 % 129)[7:0];
      tmp2.x2 = (inp2 % 255)[7:0]; tmp2.x2_star = (inp2 % 257)[8:0];

      UInt#(32) tmp1_uint = unpack(pack(tmp1));
      UInt#(32) tmp2_uint = unpack(pack(tmp2));
      a.enq(tmp1_uint);
      b.enq(tmp2_uint);
      if(inp1 < inp2) begin
        golden_answer.enq(tmp2);
      end else begin
        golden_answer.enq(tmp1);
      end

      return tuple2(tmp1_uint, tmp2_uint);
    endmethod
  endinterface
endmodule

(* no_default_clock, no_default_reset *)
module mkCompareTest(Empty);
  let clk <- mkAbsoluteClock(0, 6400);
  let rstn <- mkInitialReset(2, clocked_by clk);

  let dut <- mkCompareRNS(clocked_by clk, reset_by rstn);
  CompareStimulus stimulus <- mkCompareStimulus(clocked_by clk, reset_by rstn);

  mkConnection(dut, stimulus);

  let fin <- mkFin(1000, clocked_by clk, reset_by rstn);
endmodule

