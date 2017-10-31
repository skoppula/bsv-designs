import Clocks::*;
import UART::*;
import BRAMUARTTest::*;
import ML605Test::*;
import StmtFSM::*;

`define IN_SIZE 16

(* no_default_reset, no_default_clock *)
module mkSimML605Test ();
    let clk66 <- mkAbsoluteClock(0, 15);
    let rst_n <- mkInitialReset(10, clocked_by clk66);
    let rst <- mkResetInverter(rst_n, clocked_by clk66);

    Integer clock_freq = 66000000;
    Integer baud_rate = 115200;
    let cfg = Config {parity: NONE, divider:fromInteger((clock_freq + (baud_rate/2))/baud_rate), two_stop_bits:False};

    let uart <- mkUARTSpec(cfg, clocked_by clk66, reset_by rst_n);
    let dut <- mkML605Test(clocked_by clk66, reset_by rst);

	Reg#(Bit#(`IN_SIZE)) x <- mkReg(0, clocked_by clk66, reset_by rst_n); //features to send
	Reg#(Bit#(`IN_SIZE)) x_rec <- mkReg(?, clocked_by clk66, reset_by rst_n); //features to receive
	Reg#(Bit#(`IN_SIZE)) y <- mkReg(0, clocked_by clk66, reset_by rst_n); //weights we have in the RAM
	Reg#(Bit#(`IN_SIZE)) y_rec <- mkReg(?, clocked_by clk66, reset_by rst_n); //weights to receive
	Reg#(int) cnt <- mkReg(0, clocked_by clk66, reset_by rst_n);
	
	Stmt transrec =
	seq
		action //generate data
			Bit#(`IN_SIZE) t1 = x + 2;
    	x <= {1'b1, t1[`IN_SIZE-2:0]};
    	y <= y + 1;
		endaction
		action //tx features
			uart.tx(x[`IN_SIZE-1:`IN_SIZE/2]);
		endaction
		action //tx features
			uart.tx(x[`IN_SIZE/2-1:0]);
			msg("testing uart transmitted feature", x);
		endaction
  	action //rx features
  		let v <- uart.rx;
  		x_rec <= {v, 'b0};
  	endaction
  	action //rx features
  		let v <- uart.rx;
  		Bit#(`IN_SIZE) xtmp = {x_rec[`IN_SIZE-1:`IN_SIZE/2], v};
  		msg("testing uart received features",xtmp);
  		x_rec <= xtmp;
  	endaction
  	action //rx weights
  		let v <- uart.rx;
  		y_rec <= {v, 'b0};
  	endaction
  	action //rx weights
  		let v <- uart.rx;
  		Bit#(`IN_SIZE) ytmp = {y_rec[`IN_SIZE-1:`IN_SIZE/2], v};
  		msg("testing uart received weights",ytmp);
  		y_rec <= ytmp;
  	endaction
  endseq;
  FSM transrecFSM <- mkFSM(transrec, clocked_by clk66, reset_by rst_n);

	(* descending_urgency = "startit, pin_connection, check" *)
  rule startit (cnt < 32'h0000_0008);
  	transrecFSM.start;
  	$display("sim fsm start");
  	cnt <= cnt + 1;
  endrule

  rule check (transrecFSM.done);
		if (x != x_rec) $display("testing mismatches in features (UART ERROR)");
  	if (y != y_rec) $display("testing mismatches in weights (UART ERROR)");
  endrule
  
	rule pin_connection;
		let u2 = uart.pins;
		let u1 = dut.uart;

		u1.rxd(u2.txd);
		u2.rxd(u1.txd);
		u1.cts(u2.rts);
		u2.cts(u1.rts);
	endrule
    
endmodule
