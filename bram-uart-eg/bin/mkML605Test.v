//
// Generated by Bluespec Compiler, version 2016.07.beta1 (build 34806, 2016-07-05)
//
// On Mon Nov 27 13:08:46 EST 2017
//
//
// Ports:
// Name                         I/O  size props
// uart_txd                       O     1
// uart_rts                       O     1
// leds                           O     7
// CLK                            I     1 clock
// RST_N                          I     1 reset
// uart_rxd                       I     1
// uart_cts                       I     1
//
// Combinational paths from inputs to outputs:
//   uart_cts -> leds
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkML605Test(CLK,
		   RST_N,

		   uart_txd,

		   uart_rxd,

		   uart_rts,

		   uart_cts,

		   leds);
  input  CLK;
  input  RST_N;

  // value method uart_txd
  output uart_txd;

  // action method uart_rxd
  input  uart_rxd;

  // value method uart_rts
  output uart_rts;

  // action method uart_cts
  input  uart_cts;

  // value method leds
  output [6 : 0] leds;

  // signals for module outputs
  wire [6 : 0] leds;
  wire uart_rts, uart_txd;

  // ports of submodule clk
  wire clk$O;

  // ports of submodule inv_rst
  wire inv_rst$RESET_OUT;

  // ports of submodule m
  wire [2 : 0] m$uart_errors;
  wire m$featureRAM_error,
       m$uart_pins_cts,
       m$uart_pins_rts,
       m$uart_pins_rxd,
       m$uart_pins_txd,
       m$weightRAM_error;

  // value method uart_txd
  assign uart_txd = m$uart_pins_txd ;

  // value method uart_rts
  assign uart_rts = m$uart_pins_rts ;

  // value method leds
  assign leds =
	     { m$uart_pins_rts,
	       uart_cts,
	       m$featureRAM_error,
	       m$weightRAM_error,
	       m$uart_errors[1],
	       m$uart_errors[2],
	       m$uart_errors[0] } ;

  // submodule clk
  BUFG clk(.I(CLK), .O(clk$O));

  // submodule inv_rst
  ResetInverter inv_rst(.RESET_IN(RST_N), .RESET_OUT(inv_rst$RESET_OUT));

  // submodule m
  mkBRAMUARTTest m(.cfg(19'd1146),
		   .CLK(clk$O),
		   .RST_N(inv_rst$RESET_OUT),
		   .uart_pins_cts(m$uart_pins_cts),
		   .uart_pins_rxd(m$uart_pins_rxd),
		   .uart_pins_txd(m$uart_pins_txd),
		   .uart_pins_rts(m$uart_pins_rts),
		   .featureRAM_error(m$featureRAM_error),
		   .weightRAM_error(m$weightRAM_error),
		   .uart_errors(m$uart_errors));

  // submodule m
  assign m$uart_pins_cts = uart_cts ;
  assign m$uart_pins_rxd = uart_rxd ;
endmodule  // mkML605Test
