import Standard::*;
import Randomizable::*;
import ReLU::*;
import RNSNum::*;

typedef Client#( UInt#(32), UInt#(32)) ReLUStimulus;

module mkReLUStimulus(ReLUStimulus);
  Randomize#(Bit#(28)) rand_inp1 <- mkGenericRandomizer;
  let a <- mkSizedFIFO(4);
  let golden_answer <- mkSizedFIFO(4);

  Reg#(Bool) init <- mkReg(False);

  rule do_init( !init);
    init <= True;
    rand_inp1.cntrl.init;
  endrule

  interface Put response;
    method Action put(UInt#(32) x_uint);
      RNSNum x = unpack(pack(x_uint));
      if(golden_answer.first != x) begin
        $display("FAIL relu");
      end
      a.deq; golden_answer.deq;
    endmethod
  endinterface

  interface Get request;
    method ActionValue#( UInt#(32) ) get;
      Bit#(28) inp1 <- rand_inp1.next;

      RNSNum tmp1;
      tmp1.x1 = (inp1 % 127)[6:0]; tmp1.x1_star = (inp1 % 129)[7:0];
      tmp1.x2 = (inp1 % 255)[7:0]; tmp1.x2_star = (inp1 % 257)[8:0];

      UInt#(32) tmp1_uint = unpack(pack(tmp1));
      a.enq(tmp1_uint);
      
      RNSNum thres;
      thres.x1 = 63; thres.x1_star = 64;
      thres.x2 = 127; thres.x2_star = 128;


      if(inp1 > 178_943_316) begin
        golden_answer.enq(thres);
      end else begin
        golden_answer.enq(tmp1);
      end

      return tmp1_uint;
    endmethod
  endinterface
endmodule

(* no_default_clock, no_default_reset *)
module mkReLUTest(Empty);
  let clk <- mkAbsoluteClock(0, 6400);
  let rstn <- mkInitialReset(2, clocked_by clk);

  let dut <- mkReLURNS(clocked_by clk, reset_by rstn);
  ReLUStimulus stimulus <- mkReLUStimulus(clocked_by clk, reset_by rstn);

  mkConnection(dut, stimulus);

  let fin <- mkFin(1000, clocked_by clk, reset_by rstn);
endmodule

