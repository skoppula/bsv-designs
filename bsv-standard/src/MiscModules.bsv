import FIFO::*;
import RegFile::*;
import SpecialFIFOs::*;
import FIFOF::*;

module mkSizedBypassFIFO #(Integer fifoDepth) (FIFO#(element_type))
    provisos (Bits#(element_type, width_any));

    let _m <- mkSizedBypassFIFOF(fifoDepth);
    method enq = _m.enq;
    method deq = _m.deq;
    method first = _m.first;
    method clear = _m.clear;
endmodule

function module#(RegFile#(index_t, data_t)) mkRegFileWCFFull
    provisos (Bits#(index_t, size_index),
              Bits#(data_t, size_data),
              Bounded#(index_t))
 = mkRegFileWCF (minBound, maxBound);

interface AutoOnce;
    method Bool done;
endinterface

module mkAutoOnce(Action d, AutoOnce ifc);
    Reg#(Bool) rdone <- mkReg(False);

    rule do_once (!rdone);
        d;
        rdone <= True;
    endrule
    method done = rdone;
endmodule

module mkFin#(Integer cycles)(Empty);
  Reg#(UInt#(32)) fcount <- mkReg(0);
  rule fin;
    fcount <= fcount + 1;
    if (fcount == fromInteger(cycles)) begin
      $finish;
    end
  endrule
endmodule
