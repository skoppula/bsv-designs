import SpecialFIFOs::*;
import FIFOF::*;
import StmtFSM::*;
import Ehr::*;

interface CreditTx#(numeric type max_credit, type dtype);
    (* always_ready *)
    method Maybe#(dtype) data;
    (* always_ready, always_enabled *)
    method Action credit(Bool i);
    method Action put(dtype i);
    (* always_ready *)
    method Bool underflow;
endinterface

interface CreditRx#(numeric type max_credit, type dtype);
    (* always_ready, always_enabled *)
    method Action data(Maybe#(dtype) i);
    (* always_ready *)
    method Bool credit;
    method ActionValue#(dtype) get;
    (* always_ready *)
    method Bool overflow;
endinterface

/*
Splits the handshaking on Get/Put methods into separate data and credit methods.
Pipelining registers can be added on the data and credit signals.

For example, when transferring data between two chips, there may be multi-cycle
delay due to pipelining registers, IO buffer delay, PCB traces, clock skew, etc.
which make it impossible to use Get/Put due to their same-cycle semantics.

For maximum throughput, set max_credit = round-trip delay between Rx and Tx.
Typically, you want to register the data and credit signals on both sides, so the
round-trip delay due to pipelining is 4. Other factors mentioned before will add
to this delay.

In general, throughput is max_credit / round-trip delay.

A difference between max_credit and round-trip delay does not affect correctness.
However, overflow is possible if max_credit on Rx is smaller than on Tx. the
opposite case (max_credit on Tx smaller than on Rx) will reduce throughput and
waste buffer space on Rx, but it won't cause errors.

mkCreditRx uses Bypass FIFO for zero latency. However, you need to put at least
one pipelining register on either data or credit due to scheduling constraints.
That is, the minimum round-trip delay is 1. The schedules are:

tx: credit < put < data
rx: data < get < credit

Example of data/credit connection with 1 credit register, showing the minimum
number of registers needed for a working implementation.

CreditTx#(1, UInt#(4)) tx <- mkCreditTx;
CreditRx#(1, UInt#(4)) rx <- mkCreditRx;
Reg#(Bool) credit_r <- mkReg(False);

mkConnection(rx.data, tx.data);
mkConnection(tx.credit, credit_r);
mkConnection(credit_r._write, rx.credit);
*/

module mkCreditTx(CreditTx#(max_credit, dtype) ifc) provisos(Bits#(dtype, dsize));
    RWire#(dtype) data_w <- mkRWire;
    Ehr#(2, UInt#(TLog#(TAdd#(max_credit,1)))) credit_r <- mkEhr(0);
    Reg#(Bool) underflow_r <- mkReg(False);

    method data = data_w.wget;
    method underflow = underflow_r;

    method credit(i) = action
        if (i) begin
            if (credit_r[0] == 0) underflow_r <= True;
            // underflow suggests bug in pipelining of data/credit lines
            credit_r[0] <= credit_r[0] - 1;
        end
    endaction;

    method put(i) = action
        await(credit_r[1] != fromInteger(valueOf(max_credit)));
        credit_r[1] <= credit_r[1] + 1;
        data_w.wset(i);
    endaction;
endmodule

module mkCreditRx(CreditRx#(max_credit, dtype) ifc) provisos(Bits#(dtype, dsize));
    PulseWire credit_w <- mkPulseWire;
    FIFOF#(dtype) data_f <- mkSizedBypassFIFOF(valueOf(max_credit));
    Reg#(Bool) overflow_r <- mkReg(False);

    method credit = credit_w;
    method overflow = overflow_r;

    method data(i) = action
        if (i matches tagged Valid .v) begin
            if (data_f.notFull) data_f.enq(v);
            else overflow_r <= True;
            // overflow suggests mismatch in max_credit on rx and tx
            // or bug in pipelining of data/credit lines
        end
    endaction;

    method get = actionvalue
        credit_w.send;
        data_f.deq;
        return data_f.first;
    endactionvalue;
endmodule
