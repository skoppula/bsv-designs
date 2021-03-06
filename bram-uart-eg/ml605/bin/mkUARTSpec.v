//
// Generated by Bluespec Compiler, version 2016.07.beta1 (build 34806, 2016-07-05)
//
// On Wed Nov 22 16:45:53 EST 2017
//
//
// Ports:
// Name                         I/O  size props
// pins_txd                       O     1
// pins_rts                       O     1
// rx_first                       O     8 reg
// RDY_rx_first                   O     1 reg
// rx                             O     8 reg
// RDY_rx                         O     1 reg
// RDY_tx                         O     1 reg
// RDY_clear                      O     1 const
// errors                         O     3 reg
// cfg                            I    19
// CLK                            I     1 clock
// RST_N                          I     1 reset
// pins_rxd                       I     1
// pins_cts                       I     1
// tx_i                           I     8 reg
// EN_tx                          I     1
// EN_clear                       I     1
// EN_rx                          I     1
//
// No combinational paths from inputs to outputs
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

module mkUARTSpec(cfg,
		  CLK,
		  RST_N,

		  pins_txd,

		  pins_rxd,

		  pins_rts,

		  pins_cts,

		  rx_first,
		  RDY_rx_first,

		  EN_rx,
		  rx,
		  RDY_rx,

		  tx_i,
		  EN_tx,
		  RDY_tx,

		  EN_clear,
		  RDY_clear,

		  errors);
  input  [18 : 0] cfg;
  input  CLK;
  input  RST_N;

  // value method pins_txd
  output pins_txd;

  // action method pins_rxd
  input  pins_rxd;

  // value method pins_rts
  output pins_rts;

  // action method pins_cts
  input  pins_cts;

  // value method rx_first
  output [7 : 0] rx_first;
  output RDY_rx_first;

  // actionvalue method rx
  input  EN_rx;
  output [7 : 0] rx;
  output RDY_rx;

  // action method tx
  input  [7 : 0] tx_i;
  input  EN_tx;
  output RDY_tx;

  // action method clear
  input  EN_clear;
  output RDY_clear;

  // value method errors
  output [2 : 0] errors;

  // signals for module outputs
  wire [7 : 0] rx, rx_first;
  wire [2 : 0] errors;
  wire RDY_clear, RDY_rx, RDY_rx_first, RDY_tx, pins_rts, pins_txd;

  // inlined wires
  wire u_rx_ticker_do_center$whas;

  // register u_rx_bit_count
  reg [2 : 0] u_rx_bit_count;
  wire [2 : 0] u_rx_bit_count$D_IN;
  wire u_rx_bit_count$EN;

  // register u_rx_curr_rx
  reg [7 : 0] u_rx_curr_rx;
  wire [7 : 0] u_rx_curr_rx$D_IN;
  wire u_rx_curr_rx$EN;

  // register u_rx_curr_rx_valid
  reg u_rx_curr_rx_valid;
  reg u_rx_curr_rx_valid$D_IN;
  wire u_rx_curr_rx_valid$EN;

  // register u_rx_last_stop
  reg u_rx_last_stop;
  wire u_rx_last_stop$D_IN, u_rx_last_stop$EN;

  // register u_rx_parity_bit
  reg u_rx_parity_bit;
  reg u_rx_parity_bit$D_IN;
  wire u_rx_parity_bit$EN;

  // register u_rx_r_framing_error
  reg u_rx_r_framing_error;
  wire u_rx_r_framing_error$D_IN, u_rx_r_framing_error$EN;

  // register u_rx_r_overrun_error
  reg u_rx_r_overrun_error;
  wire u_rx_r_overrun_error$D_IN, u_rx_r_overrun_error$EN;

  // register u_rx_r_parity_error
  reg u_rx_r_parity_error;
  wire u_rx_r_parity_error$D_IN, u_rx_r_parity_error$EN;

  // register u_rx_r_rxd_old
  reg u_rx_r_rxd_old;
  wire u_rx_r_rxd_old$D_IN, u_rx_r_rxd_old$EN;

  // register u_rx_rx_f_r_count
  reg [3 : 0] u_rx_rx_f_r_count;
  wire [3 : 0] u_rx_rx_f_r_count$D_IN;
  wire u_rx_rx_f_r_count$EN;

  // register u_rx_state
  reg [2 : 0] u_rx_state;
  reg [2 : 0] u_rx_state$D_IN;
  wire u_rx_state$EN;

  // register u_rx_ticker_counter
  reg [15 : 0] u_rx_ticker_counter;
  wire [15 : 0] u_rx_ticker_counter$D_IN;
  wire u_rx_ticker_counter$EN;

  // register u_tx_bit_count
  reg [2 : 0] u_tx_bit_count;
  wire [2 : 0] u_tx_bit_count$D_IN;
  wire u_tx_bit_count$EN;

  // register u_tx_curr_tx
  reg [7 : 0] u_tx_curr_tx;
  wire [7 : 0] u_tx_curr_tx$D_IN;
  wire u_tx_curr_tx$EN;

  // register u_tx_last_stop
  reg u_tx_last_stop;
  wire u_tx_last_stop$D_IN, u_tx_last_stop$EN;

  // register u_tx_parity_bit
  reg u_tx_parity_bit;
  wire u_tx_parity_bit$D_IN, u_tx_parity_bit$EN;

  // register u_tx_state
  reg [1 : 0] u_tx_state;
  reg [1 : 0] u_tx_state$D_IN;
  wire u_tx_state$EN;

  // register u_tx_ticker_counter
  reg [15 : 0] u_tx_ticker_counter;
  wire [15 : 0] u_tx_ticker_counter$D_IN;
  wire u_tx_ticker_counter$EN;

  // ports of submodule u_rx_rx_f_rx_f
  wire [7 : 0] u_rx_rx_f_rx_f$D_IN, u_rx_rx_f_rx_f$D_OUT;
  wire u_rx_rx_f_rx_f$CLR,
       u_rx_rx_f_rx_f$DEQ,
       u_rx_rx_f_rx_f$EMPTY_N,
       u_rx_rx_f_rx_f$ENQ,
       u_rx_rx_f_rx_f$FULL_N;

  // ports of submodule u_tx_tx_f
  wire [7 : 0] u_tx_tx_f$D_IN, u_tx_tx_f$D_OUT;
  wire u_tx_tx_f$CLR,
       u_tx_tx_f$DEQ,
       u_tx_tx_f$EMPTY_N,
       u_tx_tx_f$ENQ,
       u_tx_tx_f$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_u_rx_data,
       WILL_FIRE_RL_u_rx_parity,
       WILL_FIRE_RL_u_rx_start,
       WILL_FIRE_RL_u_rx_stop,
       WILL_FIRE_RL_u_rx_wait_for_start,
       WILL_FIRE_RL_u_rx_write_data,
       WILL_FIRE_RL_u_tx_data,
       WILL_FIRE_RL_u_tx_parity,
       WILL_FIRE_RL_u_tx_start,
       WILL_FIRE_RL_u_tx_stop;

  // inputs to muxes for submodule ports
  wire [7 : 0] MUX_u_tx_curr_tx$write_1__VAL_1;
  wire [2 : 0] MUX_u_rx_state$write_1__VAL_2,
	       MUX_u_rx_state$write_1__VAL_3,
	       MUX_u_rx_state$write_1__VAL_4;
  wire [1 : 0] MUX_u_tx_state$write_1__VAL_1;
  wire MUX_u_rx_curr_rx_valid$write_1__SEL_1,
       MUX_u_rx_curr_rx_valid$write_1__SEL_2,
       MUX_u_rx_parity_bit$write_1__SEL_1,
       MUX_u_rx_parity_bit$write_1__SEL_2,
       MUX_u_rx_parity_bit$write_1__VAL_3,
       MUX_u_rx_state$write_1__SEL_1,
       MUX_u_rx_state$write_1__SEL_2,
       MUX_u_tx_parity_bit$write_1__VAL_2,
       MUX_u_tx_state$write_1__SEL_1,
       MUX_u_tx_state$write_1__SEL_2;

  // remaining internal signals
  reg [31 : 0] v__h1215, v__h1697, v__h1901, v__h2076;
  wire u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65;

  // value method pins_txd
  assign pins_txd =
	     u_tx_state == 2'd3 ||
	     u_tx_state != 2'd0 &&
	     ((u_tx_state == 2'd1) ? u_tx_curr_tx[0] : u_tx_parity_bit) ;

  // value method pins_rts
  assign pins_rts = u_rx_rx_f_r_count >= 4'd4 ;

  // value method rx_first
  assign rx_first = u_rx_rx_f_rx_f$D_OUT ;
  assign RDY_rx_first = u_rx_rx_f_rx_f$EMPTY_N ;

  // actionvalue method rx
  assign rx = u_rx_rx_f_rx_f$D_OUT ;
  assign RDY_rx = u_rx_rx_f_rx_f$EMPTY_N ;

  // action method tx
  assign RDY_tx = u_tx_tx_f$FULL_N ;

  // action method clear
  assign RDY_clear = 1'd1 ;

  // value method errors
  assign errors =
	     { u_rx_r_parity_error,
	       u_rx_r_overrun_error,
	       u_rx_r_framing_error } ;

  // submodule u_rx_rx_f_rx_f
  SizedFIFO #(.p1width(32'd8),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) u_rx_rx_f_rx_f(.RST(RST_N),
					      .CLK(CLK),
					      .D_IN(u_rx_rx_f_rx_f$D_IN),
					      .ENQ(u_rx_rx_f_rx_f$ENQ),
					      .DEQ(u_rx_rx_f_rx_f$DEQ),
					      .CLR(u_rx_rx_f_rx_f$CLR),
					      .D_OUT(u_rx_rx_f_rx_f$D_OUT),
					      .FULL_N(u_rx_rx_f_rx_f$FULL_N),
					      .EMPTY_N(u_rx_rx_f_rx_f$EMPTY_N));

  // submodule u_tx_tx_f
  FIFO2 #(.width(32'd8), .guarded(32'd1)) u_tx_tx_f(.RST(RST_N),
						    .CLK(CLK),
						    .D_IN(u_tx_tx_f$D_IN),
						    .ENQ(u_tx_tx_f$ENQ),
						    .DEQ(u_tx_tx_f$DEQ),
						    .CLR(u_tx_tx_f$CLR),
						    .D_OUT(u_tx_tx_f$D_OUT),
						    .FULL_N(u_tx_tx_f$FULL_N),
						    .EMPTY_N(u_tx_tx_f$EMPTY_N));

  // rule RL_u_rx_write_data
  assign WILL_FIRE_RL_u_rx_write_data =
	     u_rx_rx_f_rx_f$FULL_N &&
	     (u_rx_state == 3'd1 || u_rx_state == 3'd4) &&
	     u_rx_curr_rx_valid ;

  // rule RL_u_rx_wait_for_start
  assign WILL_FIRE_RL_u_rx_wait_for_start =
	     u_rx_state == 3'd0 && !pins_rxd && u_rx_r_rxd_old ;

  // rule RL_u_rx_start
  assign WILL_FIRE_RL_u_rx_start =
	     u_rx_state == 3'd1 && u_rx_ticker_counter == 16'd0 ;

  // rule RL_u_rx_data
  assign WILL_FIRE_RL_u_rx_data =
	     u_rx_state == 3'd2 && u_rx_ticker_counter == 16'd0 ;

  // rule RL_u_rx_parity
  assign WILL_FIRE_RL_u_rx_parity =
	     u_rx_state == 3'd3 && u_rx_ticker_counter == 16'd0 ;

  // rule RL_u_rx_stop
  assign WILL_FIRE_RL_u_rx_stop =
	     u_rx_state == 3'd4 && u_rx_ticker_counter == 16'd0 ;

  // rule RL_u_tx_stop
  assign WILL_FIRE_RL_u_tx_stop =
	     u_tx_ticker_counter == 16'd0 && u_tx_state == 2'd3 ;

  // rule RL_u_tx_start
  assign WILL_FIRE_RL_u_tx_start =
	     u_tx_tx_f$EMPTY_N && u_tx_ticker_counter == 16'd0 &&
	     u_tx_state == 2'd0 ;

  // rule RL_u_tx_data
  assign WILL_FIRE_RL_u_tx_data =
	     u_tx_ticker_counter == 16'd0 && u_tx_state == 2'd1 ;

  // rule RL_u_tx_parity
  assign WILL_FIRE_RL_u_tx_parity =
	     u_tx_ticker_counter == 16'd0 && u_tx_state == 2'd2 ;

  // inputs to muxes for submodule ports
  assign MUX_u_rx_curr_rx_valid$write_1__SEL_1 =
	     WILL_FIRE_RL_u_rx_parity &&
	     u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65 ;
  assign MUX_u_rx_curr_rx_valid$write_1__SEL_2 =
	     WILL_FIRE_RL_u_rx_data &&
	     (u_rx_bit_count == 3'd7 && cfg[18:17] == 2'd0 ||
	      u_rx_bit_count == 3'd0 && u_rx_curr_rx_valid) ;
  assign MUX_u_rx_parity_bit$write_1__SEL_1 =
	     WILL_FIRE_RL_u_rx_start && !pins_rxd ;
  assign MUX_u_rx_parity_bit$write_1__SEL_2 =
	     WILL_FIRE_RL_u_rx_wait_for_start && cfg[16:1] == 16'd1 ;
  assign MUX_u_rx_state$write_1__SEL_1 =
	     WILL_FIRE_RL_u_rx_stop && u_rx_last_stop ;
  assign MUX_u_rx_state$write_1__SEL_2 =
	     WILL_FIRE_RL_u_rx_data && u_rx_bit_count == 3'd7 ;
  assign MUX_u_tx_state$write_1__SEL_1 =
	     WILL_FIRE_RL_u_tx_data && u_tx_bit_count == 3'd7 ;
  assign MUX_u_tx_state$write_1__SEL_2 =
	     WILL_FIRE_RL_u_tx_stop && u_tx_last_stop && !pins_cts &&
	     u_tx_tx_f$EMPTY_N ;
  assign MUX_u_rx_parity_bit$write_1__VAL_3 = u_rx_parity_bit ^ pins_rxd ;
  assign MUX_u_rx_state$write_1__VAL_2 = (cfg[18:17] == 2'd0) ? 3'd4 : 3'd3 ;
  assign MUX_u_rx_state$write_1__VAL_3 = (cfg[16:1] == 16'd1) ? 3'd2 : 3'd1 ;
  assign MUX_u_rx_state$write_1__VAL_4 = pins_rxd ? 3'd0 : 3'd2 ;
  assign MUX_u_tx_curr_tx$write_1__VAL_1 = { 1'd0, u_tx_curr_tx[7:1] } ;
  assign MUX_u_tx_parity_bit$write_1__VAL_2 =
	     u_tx_parity_bit ^ u_tx_curr_tx[0] ;
  assign MUX_u_tx_state$write_1__VAL_1 = (cfg[18:17] == 2'd0) ? 2'd3 : 2'd2 ;

  // inlined wires
  assign u_rx_ticker_do_center$whas =
	     WILL_FIRE_RL_u_rx_wait_for_start && cfg[16:1] != 16'd1 ;

  // register u_rx_bit_count
  assign u_rx_bit_count$D_IN =
	     (u_rx_bit_count == 3'd7) ? 3'd0 : u_rx_bit_count + 3'd1 ;
  assign u_rx_bit_count$EN = WILL_FIRE_RL_u_rx_data ;

  // register u_rx_curr_rx
  assign u_rx_curr_rx$D_IN = { pins_rxd, u_rx_curr_rx[7:1] } ;
  assign u_rx_curr_rx$EN = WILL_FIRE_RL_u_rx_data ;

  // register u_rx_curr_rx_valid
  always@(MUX_u_rx_curr_rx_valid$write_1__SEL_1 or
	  MUX_u_rx_curr_rx_valid$write_1__SEL_2 or
	  u_rx_bit_count or WILL_FIRE_RL_u_rx_write_data)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_u_rx_curr_rx_valid$write_1__SEL_1: u_rx_curr_rx_valid$D_IN = 1'd1;
      MUX_u_rx_curr_rx_valid$write_1__SEL_2:
	  u_rx_curr_rx_valid$D_IN = u_rx_bit_count == 3'd7;
      WILL_FIRE_RL_u_rx_write_data: u_rx_curr_rx_valid$D_IN = 1'd0;
      default: u_rx_curr_rx_valid$D_IN = 1'b0 /* unspecified value */ ;
    endcase
  end
  assign u_rx_curr_rx_valid$EN =
	     WILL_FIRE_RL_u_rx_parity &&
	     u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65 ||
	     MUX_u_rx_curr_rx_valid$write_1__SEL_2 ||
	     WILL_FIRE_RL_u_rx_write_data ;

  // register u_rx_last_stop
  assign u_rx_last_stop$D_IN = !WILL_FIRE_RL_u_rx_data || !cfg[0] ;
  assign u_rx_last_stop$EN =
	     WILL_FIRE_RL_u_rx_data || WILL_FIRE_RL_u_rx_stop ;

  // register u_rx_parity_bit
  always@(MUX_u_rx_parity_bit$write_1__SEL_1 or
	  cfg or
	  MUX_u_rx_parity_bit$write_1__SEL_2 or
	  WILL_FIRE_RL_u_rx_data or MUX_u_rx_parity_bit$write_1__VAL_3)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_u_rx_parity_bit$write_1__SEL_1:
	  u_rx_parity_bit$D_IN = cfg[18:17] == 2'd1;
      MUX_u_rx_parity_bit$write_1__SEL_2:
	  u_rx_parity_bit$D_IN = cfg[18:17] == 2'd1;
      WILL_FIRE_RL_u_rx_data:
	  u_rx_parity_bit$D_IN = MUX_u_rx_parity_bit$write_1__VAL_3;
      default: u_rx_parity_bit$D_IN = 1'b0 /* unspecified value */ ;
    endcase
  end
  assign u_rx_parity_bit$EN =
	     WILL_FIRE_RL_u_rx_start && !pins_rxd ||
	     WILL_FIRE_RL_u_rx_wait_for_start && cfg[16:1] == 16'd1 ||
	     WILL_FIRE_RL_u_rx_data ;

  // register u_rx_r_framing_error
  assign u_rx_r_framing_error$D_IN = 1'd1 ;
  assign u_rx_r_framing_error$EN =
	     WILL_FIRE_RL_u_rx_start && pins_rxd ||
	     WILL_FIRE_RL_u_rx_stop && !pins_rxd ;

  // register u_rx_r_overrun_error
  assign u_rx_r_overrun_error$D_IN = 1'd1 ;
  assign u_rx_r_overrun_error$EN =
	     WILL_FIRE_RL_u_rx_data && u_rx_bit_count == 3'd0 &&
	     u_rx_curr_rx_valid ;

  // register u_rx_r_parity_error
  assign u_rx_r_parity_error$D_IN = 1'd1 ;
  assign u_rx_r_parity_error$EN =
	     WILL_FIRE_RL_u_rx_parity &&
	     !u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65 ;

  // register u_rx_r_rxd_old
  assign u_rx_r_rxd_old$D_IN = pins_rxd ;
  assign u_rx_r_rxd_old$EN = 1'd1 ;

  // register u_rx_rx_f_r_count
  assign u_rx_rx_f_r_count$D_IN =
	     EN_clear ?
	       4'd0 :
	       (WILL_FIRE_RL_u_rx_write_data ?
		  u_rx_rx_f_r_count + 4'd1 :
		  u_rx_rx_f_r_count - 4'd1) ;
  assign u_rx_rx_f_r_count$EN =
	     EN_clear || WILL_FIRE_RL_u_rx_write_data != EN_rx ;

  // register u_rx_state
  always@(MUX_u_rx_state$write_1__SEL_1 or
	  MUX_u_rx_state$write_1__SEL_2 or
	  MUX_u_rx_state$write_1__VAL_2 or
	  WILL_FIRE_RL_u_rx_wait_for_start or
	  MUX_u_rx_state$write_1__VAL_3 or
	  WILL_FIRE_RL_u_rx_start or
	  MUX_u_rx_state$write_1__VAL_4 or WILL_FIRE_RL_u_rx_parity)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_u_rx_state$write_1__SEL_1: u_rx_state$D_IN = 3'd0;
      MUX_u_rx_state$write_1__SEL_2:
	  u_rx_state$D_IN = MUX_u_rx_state$write_1__VAL_2;
      WILL_FIRE_RL_u_rx_wait_for_start:
	  u_rx_state$D_IN = MUX_u_rx_state$write_1__VAL_3;
      WILL_FIRE_RL_u_rx_start:
	  u_rx_state$D_IN = MUX_u_rx_state$write_1__VAL_4;
      WILL_FIRE_RL_u_rx_parity: u_rx_state$D_IN = 3'd4;
      default: u_rx_state$D_IN = 3'b010 /* unspecified value */ ;
    endcase
  end
  assign u_rx_state$EN =
	     WILL_FIRE_RL_u_rx_stop && u_rx_last_stop ||
	     WILL_FIRE_RL_u_rx_data && u_rx_bit_count == 3'd7 ||
	     WILL_FIRE_RL_u_rx_wait_for_start ||
	     WILL_FIRE_RL_u_rx_start ||
	     WILL_FIRE_RL_u_rx_parity ;

  // register u_rx_ticker_counter
  assign u_rx_ticker_counter$D_IN =
	     u_rx_ticker_do_center$whas ?
	       (cfg[16:1] >> 1) - 16'd1 :
	       ((u_rx_ticker_counter == 16'd0) ?
		  cfg[16:1] :
		  u_rx_ticker_counter) -
	       16'd1 ;
  assign u_rx_ticker_counter$EN = 1'd1 ;

  // register u_tx_bit_count
  assign u_tx_bit_count$D_IN =
	     (u_tx_bit_count == 3'd7) ? 3'd0 : u_tx_bit_count + 3'd1 ;
  assign u_tx_bit_count$EN = WILL_FIRE_RL_u_tx_data ;

  // register u_tx_curr_tx
  assign u_tx_curr_tx$D_IN =
	     WILL_FIRE_RL_u_tx_data ?
	       MUX_u_tx_curr_tx$write_1__VAL_1 :
	       u_tx_tx_f$D_OUT ;
  assign u_tx_curr_tx$EN = WILL_FIRE_RL_u_tx_data || WILL_FIRE_RL_u_tx_start ;

  // register u_tx_last_stop
  assign u_tx_last_stop$D_IN = !WILL_FIRE_RL_u_tx_data || !cfg[0] ;
  assign u_tx_last_stop$EN =
	     WILL_FIRE_RL_u_tx_data || WILL_FIRE_RL_u_tx_stop ;

  // register u_tx_parity_bit
  assign u_tx_parity_bit$D_IN =
	     WILL_FIRE_RL_u_tx_start ?
	       cfg[18:17] == 2'd1 :
	       MUX_u_tx_parity_bit$write_1__VAL_2 ;
  assign u_tx_parity_bit$EN =
	     WILL_FIRE_RL_u_tx_start || WILL_FIRE_RL_u_tx_data ;

  // register u_tx_state
  always@(MUX_u_tx_state$write_1__SEL_1 or
	  MUX_u_tx_state$write_1__VAL_1 or
	  MUX_u_tx_state$write_1__SEL_2 or
	  WILL_FIRE_RL_u_tx_start or WILL_FIRE_RL_u_tx_parity)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_u_tx_state$write_1__SEL_1:
	  u_tx_state$D_IN = MUX_u_tx_state$write_1__VAL_1;
      MUX_u_tx_state$write_1__SEL_2: u_tx_state$D_IN = 2'd0;
      WILL_FIRE_RL_u_tx_start: u_tx_state$D_IN = 2'd1;
      WILL_FIRE_RL_u_tx_parity: u_tx_state$D_IN = 2'd3;
      default: u_tx_state$D_IN = 2'b10 /* unspecified value */ ;
    endcase
  end
  assign u_tx_state$EN =
	     WILL_FIRE_RL_u_tx_data && u_tx_bit_count == 3'd7 ||
	     WILL_FIRE_RL_u_tx_stop && u_tx_last_stop && !pins_cts &&
	     u_tx_tx_f$EMPTY_N ||
	     WILL_FIRE_RL_u_tx_start ||
	     WILL_FIRE_RL_u_tx_parity ;

  // register u_tx_ticker_counter
  assign u_tx_ticker_counter$D_IN =
	     ((u_tx_ticker_counter == 16'd0) ?
		cfg[16:1] :
		u_tx_ticker_counter) -
	     16'd1 ;
  assign u_tx_ticker_counter$EN = 1'd1 ;

  // submodule u_rx_rx_f_rx_f
  assign u_rx_rx_f_rx_f$D_IN = u_rx_curr_rx ;
  assign u_rx_rx_f_rx_f$ENQ = WILL_FIRE_RL_u_rx_write_data ;
  assign u_rx_rx_f_rx_f$DEQ = EN_rx ;
  assign u_rx_rx_f_rx_f$CLR = EN_clear ;

  // submodule u_tx_tx_f
  assign u_tx_tx_f$D_IN = tx_i ;
  assign u_tx_tx_f$ENQ = EN_tx ;
  assign u_tx_tx_f$DEQ = WILL_FIRE_RL_u_tx_start ;
  assign u_tx_tx_f$CLR = EN_clear ;

  // remaining internal signals
  assign u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65 =
	     u_rx_parity_bit == pins_rxd ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        u_rx_bit_count <= `BSV_ASSIGNMENT_DELAY 3'd0;
	u_rx_curr_rx_valid <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_last_stop <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_parity_bit <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_r_framing_error <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_r_overrun_error <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_r_parity_error <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_rx_rx_f_r_count <= `BSV_ASSIGNMENT_DELAY 4'd0;
	u_rx_state <= `BSV_ASSIGNMENT_DELAY 3'd0;
	u_rx_ticker_counter <= `BSV_ASSIGNMENT_DELAY 16'd0;
	u_tx_bit_count <= `BSV_ASSIGNMENT_DELAY 3'd0;
	u_tx_last_stop <= `BSV_ASSIGNMENT_DELAY 1'd1;
	u_tx_parity_bit <= `BSV_ASSIGNMENT_DELAY 1'd0;
	u_tx_state <= `BSV_ASSIGNMENT_DELAY 2'd3;
	u_tx_ticker_counter <= `BSV_ASSIGNMENT_DELAY 16'd0;
      end
    else
      begin
        if (u_rx_bit_count$EN)
	  u_rx_bit_count <= `BSV_ASSIGNMENT_DELAY u_rx_bit_count$D_IN;
	if (u_rx_curr_rx_valid$EN)
	  u_rx_curr_rx_valid <= `BSV_ASSIGNMENT_DELAY u_rx_curr_rx_valid$D_IN;
	if (u_rx_last_stop$EN)
	  u_rx_last_stop <= `BSV_ASSIGNMENT_DELAY u_rx_last_stop$D_IN;
	if (u_rx_parity_bit$EN)
	  u_rx_parity_bit <= `BSV_ASSIGNMENT_DELAY u_rx_parity_bit$D_IN;
	if (u_rx_r_framing_error$EN)
	  u_rx_r_framing_error <= `BSV_ASSIGNMENT_DELAY
	      u_rx_r_framing_error$D_IN;
	if (u_rx_r_overrun_error$EN)
	  u_rx_r_overrun_error <= `BSV_ASSIGNMENT_DELAY
	      u_rx_r_overrun_error$D_IN;
	if (u_rx_r_parity_error$EN)
	  u_rx_r_parity_error <= `BSV_ASSIGNMENT_DELAY
	      u_rx_r_parity_error$D_IN;
	if (u_rx_rx_f_r_count$EN)
	  u_rx_rx_f_r_count <= `BSV_ASSIGNMENT_DELAY u_rx_rx_f_r_count$D_IN;
	if (u_rx_state$EN)
	  u_rx_state <= `BSV_ASSIGNMENT_DELAY u_rx_state$D_IN;
	if (u_rx_ticker_counter$EN)
	  u_rx_ticker_counter <= `BSV_ASSIGNMENT_DELAY
	      u_rx_ticker_counter$D_IN;
	if (u_tx_bit_count$EN)
	  u_tx_bit_count <= `BSV_ASSIGNMENT_DELAY u_tx_bit_count$D_IN;
	if (u_tx_last_stop$EN)
	  u_tx_last_stop <= `BSV_ASSIGNMENT_DELAY u_tx_last_stop$D_IN;
	if (u_tx_parity_bit$EN)
	  u_tx_parity_bit <= `BSV_ASSIGNMENT_DELAY u_tx_parity_bit$D_IN;
	if (u_tx_state$EN)
	  u_tx_state <= `BSV_ASSIGNMENT_DELAY u_tx_state$D_IN;
	if (u_tx_ticker_counter$EN)
	  u_tx_ticker_counter <= `BSV_ASSIGNMENT_DELAY
	      u_tx_ticker_counter$D_IN;
      end
    if (u_rx_curr_rx$EN)
      u_rx_curr_rx <= `BSV_ASSIGNMENT_DELAY u_rx_curr_rx$D_IN;
    if (u_rx_r_rxd_old$EN)
      u_rx_r_rxd_old <= `BSV_ASSIGNMENT_DELAY u_rx_r_rxd_old$D_IN;
    if (u_tx_curr_tx$EN)
      u_tx_curr_tx <= `BSV_ASSIGNMENT_DELAY u_tx_curr_tx$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    u_rx_bit_count = 3'h2;
    u_rx_curr_rx = 8'hAA;
    u_rx_curr_rx_valid = 1'h0;
    u_rx_last_stop = 1'h0;
    u_rx_parity_bit = 1'h0;
    u_rx_r_framing_error = 1'h0;
    u_rx_r_overrun_error = 1'h0;
    u_rx_r_parity_error = 1'h0;
    u_rx_r_rxd_old = 1'h0;
    u_rx_rx_f_r_count = 4'hA;
    u_rx_state = 3'h2;
    u_rx_ticker_counter = 16'hAAAA;
    u_tx_bit_count = 3'h2;
    u_tx_curr_tx = 8'hAA;
    u_tx_last_stop = 1'h0;
    u_tx_parity_bit = 1'h0;
    u_tx_state = 2'h2;
    u_tx_ticker_counter = 16'hAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_start && pins_rxd)
	begin
	  v__h1215 = $stime;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_start && pins_rxd)
	$fdisplay(32'h80000002,
		  "Warning in %m at time %t: ",
		  v__h1215,
		  "Illegal start bit detected. Check baudrates.");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_data && u_rx_bit_count == 3'd0 &&
	  u_rx_curr_rx_valid)
	begin
	  v__h1697 = $stime;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_data && u_rx_bit_count == 3'd0 &&
	  u_rx_curr_rx_valid)
	$fdisplay(32'h80000002,
		  "Warning in %m at time %t: ",
		  v__h1697,
		  "Valid data begin overwritten.");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_parity &&
	  !u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65)
	begin
	  v__h1901 = $stime;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_parity &&
	  !u_rx_parity_bit_8_EQ_u_rx_r_rxd_wget__0___d65)
	$fdisplay(32'h80000002,
		  "Warning in %m at time %t: ",
		  v__h1901,
		  "Parity error. Dropping data.");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_stop && !pins_rxd)
	begin
	  v__h2076 = $stime;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_u_rx_stop && !pins_rxd)
	$fdisplay(32'h80000002,
		  "Warning in %m at time %t: ",
		  v__h2076,
		  "Illegal stop bit detected.");
  end
  // synopsys translate_on
endmodule  // mkUARTSpec

