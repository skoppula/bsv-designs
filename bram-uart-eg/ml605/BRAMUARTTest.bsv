//import Mult::*;
import UART::*;
import BRAM::*;
import StmtFSM::*;

`define IN_SIZE 16
`define OUT_SIZE 31
`define IN_MAG 15
`define UART_BIT_S 8
`define IN_BUFFER_S 11
//`define CLK_FREQ 66000000
`define BAUD_RATE 115200

/*
(* synthesize *)
module mkMultSpec(Mult#(`IN_SIZE, `OUT_SIZE, `IN_MAG));
  let ifc();
	mkMult _multSpec(ifc);
	return ifc;
endmodule
*/
(* synthesize *)
module mkUARTSpec#(Config cfg)(UART#(Bit#(`UART_BIT_S)));
  let ifc();
  mkUART _UARTSpec(cfg, ifc);
  return ifc;
endmodule

function BRAMRequest#(Bit#(`IN_BUFFER_S),Bit#(`IN_SIZE)) makeRequest(Bool write, Bit#(`IN_BUFFER_S) addr, Bit#(`IN_SIZE) data);
	return BRAMRequest{ write:write,
                        responseOnWrite:False,
					    address: addr,
    					datain: data 
					  };
endfunction

function Action msg(String tag, dtype val) provisos (FShow#(dtype)) = $display($time, "     %m.", tag, "\t", fshow(val));

interface BRAMUARTTest;
	(* always_ready, always_enabled *)
	interface UARTPins uart_pins;
	method Bool featureRAM_error;
	method Bool weightRAM_error;
	method Errors uart_errors;
endinterface

(* synthesize *)
(* always_ready = "featureRAM_error, weightRAM_error, uart_errors" *)
module mkBRAMUARTTest#(Config cfg)(BRAMUARTTest ifc);
	let uart <- mkUARTSpec(cfg);

	BRAM_Configure cfgRAM = defaultValue;
	BRAM1Port#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) featureBRAM <- mkBRAM1Server(cfgRAM);
	cfgRAM.loadFormat = tagged Hex "y.txt";
	BRAM1Port#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) weightBRAM <- mkBRAM1Server(cfgRAM);

	Reg#(Bit#(`IN_BUFFER_S)) fptr_w <- mkReg(0);
	Reg#(Bit#(`IN_BUFFER_S)) fptr_r <- mkReg(0);
	Reg#(Bit#(`IN_BUFFER_S)) wptr_w <- mkReg(0);
	Reg#(Bit#(`IN_BUFFER_S)) wptr_r <- mkReg(0);
	Reg#(Bit#(`IN_SIZE)) feature <- mkReg(?);
	Reg#(Bit#(`IN_SIZE)) weight <- mkReg(?);
	Reg#(Bit#(`IN_SIZE)) feature2 <- mkReg(?);
	Reg#(Bit#(`IN_SIZE)) weight2 <- mkReg(?);

	Reg#(Bool) featureRAM_error_r <- mkReg(False);
	Reg#(Bool) weightRAM_error_r <- mkReg(False);

	Reg#(Bit#(32)) i <- mkRegU;
	//for (Integer j=0; j<8; j=j+1) $display("hi");

	Stmt test =
	(seq
			for (i<=0; i < 8; i<=i+1)
			seq
				delay(10);
				$display("DUT iter %d", i);
				action
					let v <- uart.rx;
					feature <= {v, 'b0};
				endaction
				action
					let v <- uart.rx;
					Bit#(`IN_SIZE) ftmp = {feature[`IN_SIZE-1:`IN_SIZE/2], v};
					msg("DUT uart received feature",ftmp);
					feature <= ftmp;
				endaction
				action //write
					featureBRAM.portA.request.put(makeRequest(True, fptr_w, feature));
					fptr_w <= fptr_w + 1;
				endaction
				action //read, request
					featureBRAM.portA.request.put(makeRequest(False, fptr_r, 0));
					weightBRAM.portA.request.put(makeRequest(False, wptr_r, 0));
					fptr_r <= fptr_r + 1;
					wptr_r <= wptr_r + 1;
				endaction
				action //read, response
					Bit#(`IN_SIZE) f2 <- featureBRAM.portA.response.get();
					Bit#(`IN_SIZE) w2 <- weightBRAM.portA.response.get();
					$display("DUT feature BRAM [%d - 1] = %h", fptr_r, f2);
					$display("DUT weight BRAM [%d - 1] = %h", wptr_r, w2);
					feature2 <= f2;
					weight2 <= w2;
				endaction
				action //increment
					if (feature2 != feature) begin
						$display("DUT mismatch in features (RAM ERROR)");
						featureRAM_error_r <= True;
					end					
					feature2 <= feature2 + 1;
				endaction
				action //tx features
					uart.tx(feature2[`IN_SIZE-1:`IN_SIZE/2]);
				endaction
				action
					uart.tx(feature2[`IN_SIZE/2-1:0]);
					msg("DUT uart transmitted feature2", feature2);
					weight <= truncate(i);
				endaction
				action //tx weights
					uart.tx(weight2[`IN_SIZE-1:`IN_SIZE/2]);
					weight <= weight + 1;
				endaction
				action
					uart.tx(weight2[`IN_SIZE/2-1:0]);
					msg("DUT uart transmitted weight2", weight2);
					if (weight2 != weight) begin
						$display("DUT mismatch in weights (RAM ERROR)");
						weightRAM_error_r <= True;
					end
				endaction
				delay(90);
			endseq
	endseq);
	mkAutoFSM(test);

	interface UARTPins uart_pins = uart.pins;
	method featureRAM_error = featureRAM_error_r;
	method weightRAM_error = weightRAM_error_r;
	method uart_errors = uart.errors;
endmodule

module mkSimBRAMUARTTest();
	Integer clk_freq = 66_000_000;
  let cfg = Config {parity:NONE, divider:fromInteger((clk_freq+`BAUD_RATE/2)/`BAUD_RATE), two_stop_bits:False};   

	let dut <- mkBRAMUARTTest(cfg);
	let uart <- mkUARTSpec(cfg);

	Reg#(Bit#(`IN_SIZE)) x <- mkReg(0); //features to send
	Reg#(Bit#(`IN_SIZE)) x_rec <- mkReg(?); //features to receive
	Reg#(Bit#(`IN_SIZE)) y <- mkReg(0); //weights we have in the RAM
	Reg#(Bit#(`IN_SIZE)) y_rec <- mkReg(?); //weights to receive
	Reg#(int) cnt <- mkReg(0);
	
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
  		msg("testing uart received feature",xtmp);
  		x_rec <= xtmp;
  	endaction
  	action //rx weights
  		let v <- uart.rx;
  		y_rec <= {v, 'b0};
  	endaction
  	action //rx weights
  		let v <- uart.rx;
  		Bit#(`IN_SIZE) ytmp = {y_rec[`IN_SIZE-1:`IN_SIZE/2], v};
  		msg("testing uart received weight",ytmp);
  		y_rec <= ytmp;
  	endaction
  endseq;
  FSM transrecFSM <- mkFSM(transrec);

	(* descending_urgency = "pin_connection, startit, check" *)
  rule startit (cnt < 8);
  	transrecFSM.start;
  	cnt <= cnt + 1;
  endrule

  rule check (transrecFSM.done);
		if (x != x_rec) $display("testing mismatches in features (UART ERROR)");
  	if (y != y_rec) $display("testing mismatches in weights (UART ERROR)");
  endrule
  
	rule pin_connection;
		let u1 = uart.pins;
		let u2 = dut.uart_pins;

		u1.rxd(u2.txd);
		u2.rxd(u1.txd);
		u1.cts(u2.rts);
		u2.cts(u1.rts);
	endrule

endmodule
/*
(* synthesize *)
module mkBRAMTest();
	BRAM_Configure cfg = defaultValue;
	BRAM1Port#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) dut0 <- mkBRAM1Server(cfg);
	cfg.loadFormat = tagged Hex "y.txt";
	BRAM1Port#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) dut1 <- mkBRAM1Server(cfg);

	Stmt test = 
	(seq
			delay(10);
			//write, no response
			action
				dut0.portA.request.put(makeRequest(True, 'h0000, 'h0000));
			endaction
			//read, request
			action
				dut0.portA.request.put(makeRequest(False, 'h0000, 0));
				dut1.portA.request.put(makeRequest(False, 'h0000, 0));
			endaction
			//read, response
			action
				$display("dut0read[0] = %h", dut0.portA.response.get());
				$display("dut1read[0] = %h", dut1.portA.response.get());
			endaction
			delay(10);
			//write, no response
			action
				dut0.portA.request.put(makeRequest(True, 'h0001, 'h8002));
			endaction
			//read, request
			action
				dut0.portA.request.put(makeRequest(False, 'h0001, 0));
				dut1.portA.request.put(makeRequest(False, 'h0001, 0));
			endaction
			//read, response
			action
				$display("dut0read[1] = %h", dut0.portA.response.get());
				$display("dut1read[1] = %h", dut1.portA.response.get());
			endaction
			delay(10);
			//write, no response
			action
				dut0.portA.request.put(makeRequest(True, 'h0002, 'h8004));
			endaction
			//read, request
			action
				dut0.portA.request.put(makeRequest(False, 'h0002, 0));
				dut1.portA.request.put(makeRequest(False, 'h0002, 0));
			endaction
			//read, response
			action
				$display("dut0read[2] = %h", dut0.portA.response.get());
				$display("dut1read[2] = %h", dut1.portA.response.get());
			endaction
			delay(10);
			//write, no response
			action
				dut0.portA.request.put(makeRequest(True, 'h0003, 'h8006));
			endaction
			//read, request
			action
				dut0.portA.request.put(makeRequest(False, 'h0003, 0));
				dut1.portA.request.put(makeRequest(False, 'h0003, 0));
			endaction
			//read, response
			action
				$display("dut0read[3] = %h", dut0.portA.response.get());
				$display("dut1read[3] = %h", dut1.portA.response.get());
			endaction
			delay(100);
	endseq);
	mkAutoFSM(test);
endmodule
*/
