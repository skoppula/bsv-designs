//import Mult::*;
import UART::*;
import BRAM::*;
import StmtFSM::*;

`define IN_SIZE 16
`define OUT_SIZE 31
`define IN_MAG 15
`define UART_BIT_S 8
`define IN_BUFFER_S 11
`define BAUD_RATE 115200

(* synthesize *)
module mkUARTSpec#(Config cfg)(UART#(Bit#(`UART_BIT_S)));
  let ifc();
  mkUART _UARTSpec(cfg, ifc);
  return ifc;
endmodule

function BRAMRequest#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) makeRequest(Bool write, Bit#(`IN_BUFFER_S) addr, Bit#(`IN_SIZE) data);
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
	method Errors uart_errors;
endinterface

(* synthesize *)
(* always_ready = "featureRAM_error, uart_errors" *)
module mkBRAMUARTTest#(Config cfg)(BRAMUARTTest ifc);
	let uart <- mkUARTSpec(cfg);

	BRAM_Configure cfgRAM = defaultValue;
	BRAM1Port#(Bit#(`IN_BUFFER_S), Bit#(`IN_SIZE)) featureBRAM <- mkBRAM1Server(cfgRAM);
	cfgRAM.loadFormat = tagged Hex "y.txt";

    // BRAM addresse for features/weights for read/write
	Reg#(Bit#(`IN_BUFFER_S)) fptr_w <- mkReg(0);
	Reg#(Bit#(`IN_BUFFER_S)) fptr_r <- mkReg(0);

	Reg#(Bit#(`IN_SIZE)) feature <- mkReg(?);
	Reg#(Bit#(`IN_SIZE)) feature2 <- mkReg(?);

	Reg#(Bool) featureRAM_error_r <- mkReg(False);

	Reg#(Bit#(32)) i <- mkRegU;

	Stmt test =
	(seq
			for (i<=0; i < 8; i<=i+1)
			seq
				delay(10);
				$display("DUT iter %d", i);

                // Obtain first feature over UART
                // Store into `feature` reg
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

                // write feature reg into BRAM address at fptr_w
                // increment fptr_w addr
				action
					featureBRAM.portA.request.put(makeRequest(True, fptr_w, feature));
					fptr_w <= fptr_w + 1;
				endaction

                // read request for BRAM addresses fptr_r, wptr_r
                // increment fptr_r/wptr_r addr
				action
					featureBRAM.portA.request.put(makeRequest(False, fptr_r, 0));
					fptr_r <= fptr_r + 1;
				endaction

                // print out read for BRAM addresses fptr_r, wptr_r
                // save result into feature2/weight2
				action
					Bit#(`IN_SIZE) f2 <- featureBRAM.portA.response.get();
					$display("DUT feature BRAM [%d - 1] = %h", fptr_r, f2);
					feature2 <= f2;
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
				endaction
				delay(90);
			endseq
	endseq);
	mkAutoFSM(test);

	interface UARTPins uart_pins = uart.pins;
	method featureRAM_error = featureRAM_error_r;
	method uart_errors = uart.errors;
endmodule

module mkSimBRAMUARTTest();
	Integer clk_freq = 66_000_000;
        let cfg = Config {parity:NONE, divider:fromInteger((clk_freq+`BAUD_RATE/2)/`BAUD_RATE), two_stop_bits:False};   

	let dut <- mkBRAMUARTTest(cfg);
	let uart <- mkUARTSpec(cfg);

	Reg#(Bit#(`IN_SIZE)) x <- mkReg(0); //features to send
	Reg#(Bit#(`IN_SIZE)) x_rec <- mkReg(?); //features to receive
	Reg#(int) cnt <- mkReg(0);
	
	Stmt transrec =
	seq
		action //generate data
			Bit#(`IN_SIZE) t1 = x + 2;
    	    x <= {1'b1, t1[`IN_SIZE-2:0]};
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
    endseq;
    FSM transrecFSM <- mkFSM(transrec);

    (* descending_urgency = "pin_connection, startit, check" *)
    rule startit (cnt < 8);
        transrecFSM.start;
    	cnt <= cnt + 1;
    endrule

    rule check (transrecFSM.done);
        if (x+1 != x_rec) $display("testing mismatches in features (UART ERROR)");
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
