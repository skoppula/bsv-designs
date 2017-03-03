//
// Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
//
// On Tue Feb  9 15:40:24 EST 2016
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
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

module mkTestDriver(CLK,
		    RST_N);
  input  CLK;
  input  RST_N;

  // register m_doneread
  reg m_doneread;
  wire m_doneread$D_IN, m_doneread$EN;

  // register m_in
  reg [31 : 0] m_in;
  wire [31 : 0] m_in$D_IN;
  wire m_in$EN;

  // register m_inited
  reg m_inited;
  wire m_inited$D_IN, m_inited$EN;

  // register m_out
  reg [31 : 0] m_out;
  wire [31 : 0] m_out$D_IN;
  wire m_out$EN;

  // register pipeline_r_0
  reg [15 : 0] pipeline_r_0;
  wire [15 : 0] pipeline_r_0$D_IN;
  wire pipeline_r_0$EN;

  // register pipeline_r_1
  reg [15 : 0] pipeline_r_1;
  wire [15 : 0] pipeline_r_1$D_IN;
  wire pipeline_r_1$EN;

  // register pipeline_r_2
  reg [15 : 0] pipeline_r_2;
  wire [15 : 0] pipeline_r_2$D_IN;
  wire pipeline_r_2$EN;

  // register pipeline_r_3
  reg [15 : 0] pipeline_r_3;
  wire [15 : 0] pipeline_r_3$D_IN;
  wire pipeline_r_3$EN;

  // register pipeline_r_4
  reg [15 : 0] pipeline_r_4;
  wire [15 : 0] pipeline_r_4$D_IN;
  wire pipeline_r_4$EN;

  // register pipeline_r_5
  reg [15 : 0] pipeline_r_5;
  wire [15 : 0] pipeline_r_5$D_IN;
  wire pipeline_r_5$EN;

  // register pipeline_r_6
  reg [15 : 0] pipeline_r_6;
  wire [15 : 0] pipeline_r_6$D_IN;
  wire pipeline_r_6$EN;

  // register pipeline_r_7
  reg [15 : 0] pipeline_r_7;
  wire [15 : 0] pipeline_r_7$D_IN;
  wire pipeline_r_7$EN;

  // ports of submodule m_outstanding
  wire [31 : 0] m_outstanding$DATA_A,
		m_outstanding$DATA_B,
		m_outstanding$DATA_C,
		m_outstanding$DATA_F,
		m_outstanding$Q_OUT;
  wire m_outstanding$ADDA,
       m_outstanding$ADDB,
       m_outstanding$SETC,
       m_outstanding$SETF;

  // ports of submodule pipeline_infifo
  wire [15 : 0] pipeline_infifo$D_IN, pipeline_infifo$D_OUT;
  wire pipeline_infifo$CLR,
       pipeline_infifo$DEQ,
       pipeline_infifo$EMPTY_N,
       pipeline_infifo$ENQ,
       pipeline_infifo$FULL_N;

  // ports of submodule pipeline_outfifo
  wire [15 : 0] pipeline_outfifo$D_IN, pipeline_outfifo$D_OUT;
  wire pipeline_outfifo$CLR,
       pipeline_outfifo$DEQ,
       pipeline_outfifo$EMPTY_N,
       pipeline_outfifo$ENQ,
       pipeline_outfifo$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_finish,
       CAN_FIRE_RL_init,
       CAN_FIRE_RL_pipeline_process,
       CAN_FIRE_RL_read,
       CAN_FIRE_RL_write,
       WILL_FIRE_RL_finish,
       WILL_FIRE_RL_init,
       WILL_FIRE_RL_pipeline_process,
       WILL_FIRE_RL_read,
       WILL_FIRE_RL_write;

  // remaining internal signals
  reg [31 : 0] TASK_fopen___d216, TASK_fopen___d218, b__h43030, x__h43184;
  wire [63 : 0] IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19,
		IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58,
		IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98,
		IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138,
		IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179,
		_53615_MUL_IF_pipeline_r_3_BIT_15_2_THEN_NEG_pi_ETC___d96,
		_813_MUL_IF_pipeline_infifo_first_BIT_15_3_THEN_ETC___d17,
		_813_MUL_IF_pipeline_r_7_72_BIT_15_73_THEN_NEG__ETC___d177,
		_872_MUL_IF_pipeline_r_1_BIT_15_2_THEN_NEG_pipe_ETC___d56,
		_872_MUL_IF_pipeline_r_5_1_BIT_15_32_THEN_NEG_p_ETC___d136;
  wire [47 : 0] IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34,
		IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73,
		IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113,
		IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153,
		IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194,
		IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d31,
		IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d70,
		IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d110,
		IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d150,
		IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d191;
  wire [31 : 0] x__h12960,
		x__h12976,
		x__h1855,
		x__h1867,
		x__h1891,
		x__h1915,
		x__h1939,
		x__h21713,
		x__h21729,
		x__h30514,
		x__h30530,
		x__h39348,
		x__h39364,
		x__h4219,
		x__h4235;
  wire [15 : 0] y_f__h14038,
		y_f__h22791,
		y_f__h31592,
		y_f__h40426,
		y_f__h5300;

  // submodule m_outstanding
  Counter #(.width(32'd32), .init(32'd0)) m_outstanding(.CLK(CLK),
							.RST(RST_N),
							.DATA_A(m_outstanding$DATA_A),
							.DATA_B(m_outstanding$DATA_B),
							.DATA_C(m_outstanding$DATA_C),
							.DATA_F(m_outstanding$DATA_F),
							.ADDA(m_outstanding$ADDA),
							.ADDB(m_outstanding$ADDB),
							.SETC(m_outstanding$SETC),
							.SETF(m_outstanding$SETF),
							.Q_OUT(m_outstanding$Q_OUT));

  // submodule pipeline_infifo
  FIFO2 #(.width(32'd16), .guarded(32'd1)) pipeline_infifo(.RST(RST_N),
							   .CLK(CLK),
							   .D_IN(pipeline_infifo$D_IN),
							   .ENQ(pipeline_infifo$ENQ),
							   .DEQ(pipeline_infifo$DEQ),
							   .CLR(pipeline_infifo$CLR),
							   .D_OUT(pipeline_infifo$D_OUT),
							   .FULL_N(pipeline_infifo$FULL_N),
							   .EMPTY_N(pipeline_infifo$EMPTY_N));

  // submodule pipeline_outfifo
  FIFO2 #(.width(32'd16), .guarded(32'd1)) pipeline_outfifo(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(pipeline_outfifo$D_IN),
							    .ENQ(pipeline_outfifo$ENQ),
							    .DEQ(pipeline_outfifo$DEQ),
							    .CLR(pipeline_outfifo$CLR),
							    .D_OUT(pipeline_outfifo$D_OUT),
							    .FULL_N(pipeline_outfifo$FULL_N),
							    .EMPTY_N(pipeline_outfifo$EMPTY_N));

  // rule RL_read
  assign CAN_FIRE_RL_read =
	     pipeline_infifo$FULL_N && m_inited && !m_doneread &&
	     m_outstanding$Q_OUT != 32'hFFFFFFFF ;
  assign WILL_FIRE_RL_read = CAN_FIRE_RL_read ;

  // rule RL_finish
  assign CAN_FIRE_RL_finish = m_doneread && m_outstanding$Q_OUT == 32'd0 ;
  assign WILL_FIRE_RL_finish = CAN_FIRE_RL_finish ;

  // rule RL_init
  assign CAN_FIRE_RL_init = !m_inited ;
  assign WILL_FIRE_RL_init = CAN_FIRE_RL_init ;

  // rule RL_write
  assign CAN_FIRE_RL_write = pipeline_outfifo$EMPTY_N && m_inited ;
  assign WILL_FIRE_RL_write = CAN_FIRE_RL_write ;

  // rule RL_pipeline_process
  assign CAN_FIRE_RL_pipeline_process =
	     pipeline_infifo$EMPTY_N && pipeline_outfifo$FULL_N ;
  assign WILL_FIRE_RL_pipeline_process = CAN_FIRE_RL_pipeline_process ;

  // register m_doneread
  assign m_doneread$D_IN = 1'd1 ;
  assign m_doneread$EN =
	     WILL_FIRE_RL_read &&
	     (x__h43184 == 32'hFFFFFFFF || b__h43030 == 32'hFFFFFFFF) ;

  // register m_in
  assign m_in$D_IN = TASK_fopen___d216 ;
  assign m_in$EN = CAN_FIRE_RL_init ;

  // register m_inited
  assign m_inited$D_IN = 1'd1 ;
  assign m_inited$EN = CAN_FIRE_RL_init ;

  // register m_out
  assign m_out$D_IN = TASK_fopen___d218 ;
  assign m_out$EN = CAN_FIRE_RL_init ;

  // register pipeline_r_0
  assign pipeline_r_0$D_IN = pipeline_infifo$D_OUT ;
  assign pipeline_r_0$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_1
  assign pipeline_r_1$D_IN = pipeline_r_0 ;
  assign pipeline_r_1$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_2
  assign pipeline_r_2$D_IN = pipeline_r_1 ;
  assign pipeline_r_2$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_3
  assign pipeline_r_3$D_IN = pipeline_r_2 ;
  assign pipeline_r_3$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_4
  assign pipeline_r_4$D_IN = pipeline_r_3 ;
  assign pipeline_r_4$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_5
  assign pipeline_r_5$D_IN = pipeline_r_4 ;
  assign pipeline_r_5$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_6
  assign pipeline_r_6$D_IN = pipeline_r_5 ;
  assign pipeline_r_6$EN = CAN_FIRE_RL_pipeline_process ;

  // register pipeline_r_7
  assign pipeline_r_7$D_IN = pipeline_r_6 ;
  assign pipeline_r_7$EN = CAN_FIRE_RL_pipeline_process ;

  // submodule m_outstanding
  assign m_outstanding$DATA_A = 32'd1 ;
  assign m_outstanding$DATA_B = 32'hFFFFFFFF ;
  assign m_outstanding$DATA_C = 32'h0 ;
  assign m_outstanding$DATA_F = 32'h0 ;
  assign m_outstanding$ADDA =
	     WILL_FIRE_RL_read && x__h43184 != 32'hFFFFFFFF &&
	     b__h43030 != 32'hFFFFFFFF ;
  assign m_outstanding$ADDB = CAN_FIRE_RL_write ;
  assign m_outstanding$SETC = 1'b0 ;
  assign m_outstanding$SETF = 1'b0 ;

  // submodule pipeline_infifo
  assign pipeline_infifo$D_IN = { b__h43030[7:0], x__h43184[7:0] } ;
  assign pipeline_infifo$ENQ =
	     WILL_FIRE_RL_read && x__h43184 != 32'hFFFFFFFF &&
	     b__h43030 != 32'hFFFFFFFF ;
  assign pipeline_infifo$DEQ = CAN_FIRE_RL_pipeline_process ;
  assign pipeline_infifo$CLR = 1'b0 ;

  // submodule pipeline_outfifo
  assign pipeline_outfifo$D_IN = x__h1855[31:16] ;
  assign pipeline_outfifo$ENQ = CAN_FIRE_RL_pipeline_process ;
  assign pipeline_outfifo$DEQ = CAN_FIRE_RL_write ;
  assign pipeline_outfifo$CLR = 1'b0 ;

  // remaining internal signals
  assign IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34 =
	     (!IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19[63] &&
	      IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d31[47]) ?
	       48'h7FFFFFFFFFFF :
	       IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d31 ;
  assign IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73 =
	     (!IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58[63] &&
	      IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d70[47]) ?
	       48'h7FFFFFFFFFFF :
	       IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d70 ;
  assign IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113 =
	     (!IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98[63] &&
	      IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d110[47]) ?
	       48'h7FFFFFFFFFFF :
	       IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d110 ;
  assign IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153 =
	     (!IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138[63] &&
	      IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d150[47]) ?
	       48'h7FFFFFFFFFFF :
	       IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d150 ;
  assign IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194 =
	     (!IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179[63] &&
	      IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d191[47]) ?
	       48'h7FFFFFFFFFFF :
	       IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d191 ;
  assign IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19 =
	     pipeline_infifo$D_OUT[15] ?
	       _813_MUL_IF_pipeline_infifo_first_BIT_15_3_THEN_ETC___d17 :
	       -_813_MUL_IF_pipeline_infifo_first_BIT_15_3_THEN_ETC___d17 ;
  assign IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d31 =
	     IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19[63:16] +
	     { 32'd0, y_f__h5300 } ;
  assign IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58 =
	     pipeline_r_1[15] ?
	       _872_MUL_IF_pipeline_r_1_BIT_15_2_THEN_NEG_pipe_ETC___d56 :
	       -_872_MUL_IF_pipeline_r_1_BIT_15_2_THEN_NEG_pipe_ETC___d56 ;
  assign IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d70 =
	     IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58[63:16] +
	     { 32'd0, y_f__h14038 } ;
  assign IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d110 =
	     IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98[63:16] +
	     { 32'd0, y_f__h22791 } ;
  assign IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98 =
	     pipeline_r_3[15] ?
	       -_53615_MUL_IF_pipeline_r_3_BIT_15_2_THEN_NEG_pi_ETC___d96 :
	       _53615_MUL_IF_pipeline_r_3_BIT_15_2_THEN_NEG_pi_ETC___d96 ;
  assign IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138 =
	     pipeline_r_5[15] ?
	       _872_MUL_IF_pipeline_r_5_1_BIT_15_32_THEN_NEG_p_ETC___d136 :
	       -_872_MUL_IF_pipeline_r_5_1_BIT_15_32_THEN_NEG_p_ETC___d136 ;
  assign IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d150 =
	     IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138[63:16] +
	     { 32'd0, y_f__h31592 } ;
  assign IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179 =
	     pipeline_r_7[15] ?
	       _813_MUL_IF_pipeline_r_7_72_BIT_15_73_THEN_NEG__ETC___d177 :
	       -_813_MUL_IF_pipeline_r_7_72_BIT_15_73_THEN_NEG__ETC___d177 ;
  assign IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d191 =
	     IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179[63:16] +
	     { 32'd0, y_f__h40426 } ;
  assign _53615_MUL_IF_pipeline_r_3_BIT_15_2_THEN_NEG_pi_ETC___d96 =
	     32'd53615 * x__h21713 ;
  assign _813_MUL_IF_pipeline_infifo_first_BIT_15_3_THEN_ETC___d17 =
	     32'd813 * x__h4219 ;
  assign _813_MUL_IF_pipeline_r_7_72_BIT_15_73_THEN_NEG__ETC___d177 =
	     32'd813 * x__h39348 ;
  assign _872_MUL_IF_pipeline_r_1_BIT_15_2_THEN_NEG_pipe_ETC___d56 =
	     32'd872 * x__h12960 ;
  assign _872_MUL_IF_pipeline_r_5_1_BIT_15_32_THEN_NEG_p_ETC___d136 =
	     32'd872 * x__h30514 ;
  assign x__h12960 = pipeline_r_1[15] ? -x__h12976 : x__h12976 ;
  assign x__h12976 = { pipeline_r_1, 16'd0 } ;
  assign x__h1855 =
	     x__h1867 +
	     ((!IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[47] &&
	       (IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[31] ||
		IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[47:32] !=
		16'd0)) ?
		32'h7FFFFFFF :
		((IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[47] &&
		  (!IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[31] ||
		   ~IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[47:32] !=
		   16'd0)) ?
		   32'h80000000 :
		   IF_NOT_IF_pipeline_r_7_72_BIT_15_73_THEN_813_M_ETC___d194[31:0])) ;
  assign x__h1867 =
	     x__h1891 +
	     ((!IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[47] &&
	       (IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[31] ||
		IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[47:32] !=
		16'd0)) ?
		32'h7FFFFFFF :
		((IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[47] &&
		  (!IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[31] ||
		   ~IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[47:32] !=
		   16'd0)) ?
		   32'h80000000 :
		   IF_NOT_IF_pipeline_r_5_1_BIT_15_32_THEN_872_MU_ETC___d153[31:0])) ;
  assign x__h1891 =
	     x__h1915 +
	     ((!IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[47] &&
	       (IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[31] ||
		IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[47:32] !=
		16'd0)) ?
		32'h7FFFFFFF :
		((IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[47] &&
		  (!IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[31] ||
		   ~IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[47:32] !=
		   16'd0)) ?
		   32'h80000000 :
		   IF_NOT_IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_ETC___d113[31:0])) ;
  assign x__h1915 =
	     x__h1939 +
	     ((!IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[47] &&
	       (IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[31] ||
		IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[47:32] !=
		16'd0)) ?
		32'h7FFFFFFF :
		((IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[47] &&
		  (!IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[31] ||
		   ~IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[47:32] !=
		   16'd0)) ?
		   32'h80000000 :
		   IF_NOT_IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_I_ETC___d73[31:0])) ;
  assign x__h1939 =
	     (!IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[47] &&
	      (IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[31] ||
	       IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[47:32] !=
	       16'd0)) ?
	       32'h7FFFFFFF :
	       ((IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[47] &&
		 (!IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[31] ||
		  ~IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[47:32] !=
		  16'd0)) ?
		  32'h80000000 :
		  IF_NOT_IF_pipeline_infifo_first_BIT_15_3_THEN__ETC___d34[31:0]) ;
  assign x__h21713 = pipeline_r_3[15] ? -x__h21729 : x__h21729 ;
  assign x__h21729 = { pipeline_r_3, 16'd0 } ;
  assign x__h30514 = pipeline_r_5[15] ? -x__h30530 : x__h30530 ;
  assign x__h30530 = { pipeline_r_5, 16'd0 } ;
  assign x__h39348 = pipeline_r_7[15] ? -x__h39364 : x__h39364 ;
  assign x__h39364 = { pipeline_r_7, 16'd0 } ;
  assign x__h4219 = pipeline_infifo$D_OUT[15] ? -x__h4235 : x__h4235 ;
  assign x__h4235 = { pipeline_infifo$D_OUT, 16'd0 } ;
  assign y_f__h14038 =
	     (IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58[15] &&
	      (IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58[63] ||
	       IF_pipeline_r_1_BIT_15_2_THEN_872_MUL_IF_pipel_ETC___d58[14:0] !=
	       15'd0)) ?
	       16'd1 :
	       16'd0 ;
  assign y_f__h22791 =
	     (IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98[15] &&
	      (IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98[63] ||
	       IF_pipeline_r_3_BIT_15_2_THEN_NEG_53615_MUL_IF_ETC___d98[14:0] !=
	       15'd0)) ?
	       16'd1 :
	       16'd0 ;
  assign y_f__h31592 =
	     (IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138[15] &&
	      (IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138[63] ||
	       IF_pipeline_r_5_1_BIT_15_32_THEN_872_MUL_IF_pi_ETC___d138[14:0] !=
	       15'd0)) ?
	       16'd1 :
	       16'd0 ;
  assign y_f__h40426 =
	     (IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179[15] &&
	      (IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179[63] ||
	       IF_pipeline_r_7_72_BIT_15_73_THEN_813_MUL_IF_p_ETC___d179[14:0] !=
	       15'd0)) ?
	       16'd1 :
	       16'd0 ;
  assign y_f__h5300 =
	     (IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19[15] &&
	      (IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19[63] ||
	       IF_pipeline_infifo_first_BIT_15_3_THEN_813_MUL_ETC___d19[14:0] !=
	       15'd0)) ?
	       16'd1 :
	       16'd0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_doneread <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_inited <= `BSV_ASSIGNMENT_DELAY 1'd0;
	pipeline_r_0 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_1 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_2 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_3 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_4 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_5 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_6 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pipeline_r_7 <= `BSV_ASSIGNMENT_DELAY 16'd0;
      end
    else
      begin
        if (m_doneread$EN)
	  m_doneread <= `BSV_ASSIGNMENT_DELAY m_doneread$D_IN;
	if (m_inited$EN) m_inited <= `BSV_ASSIGNMENT_DELAY m_inited$D_IN;
	if (pipeline_r_0$EN)
	  pipeline_r_0 <= `BSV_ASSIGNMENT_DELAY pipeline_r_0$D_IN;
	if (pipeline_r_1$EN)
	  pipeline_r_1 <= `BSV_ASSIGNMENT_DELAY pipeline_r_1$D_IN;
	if (pipeline_r_2$EN)
	  pipeline_r_2 <= `BSV_ASSIGNMENT_DELAY pipeline_r_2$D_IN;
	if (pipeline_r_3$EN)
	  pipeline_r_3 <= `BSV_ASSIGNMENT_DELAY pipeline_r_3$D_IN;
	if (pipeline_r_4$EN)
	  pipeline_r_4 <= `BSV_ASSIGNMENT_DELAY pipeline_r_4$D_IN;
	if (pipeline_r_5$EN)
	  pipeline_r_5 <= `BSV_ASSIGNMENT_DELAY pipeline_r_5$D_IN;
	if (pipeline_r_6$EN)
	  pipeline_r_6 <= `BSV_ASSIGNMENT_DELAY pipeline_r_6$D_IN;
	if (pipeline_r_7$EN)
	  pipeline_r_7 <= `BSV_ASSIGNMENT_DELAY pipeline_r_7$D_IN;
      end
    if (m_in$EN) m_in <= `BSV_ASSIGNMENT_DELAY m_in$D_IN;
    if (m_out$EN) m_out <= `BSV_ASSIGNMENT_DELAY m_out$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_doneread = 1'h0;
    m_in = 32'hAAAAAAAA;
    m_inited = 1'h0;
    m_out = 32'hAAAAAAAA;
    pipeline_r_0 = 16'hAAAA;
    pipeline_r_1 = 16'hAAAA;
    pipeline_r_2 = 16'hAAAA;
    pipeline_r_3 = 16'hAAAA;
    pipeline_r_4 = 16'hAAAA;
    pipeline_r_5 = 16'hAAAA;
    pipeline_r_6 = 16'hAAAA;
    pipeline_r_7 = 16'hAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_read)
	begin
	  x__h43184 = $fgetc(m_in);
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_read)
	begin
	  b__h43030 = $fgetc(m_in);
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_read &&
	  (x__h43184 == 32'hFFFFFFFF || b__h43030 == 32'hFFFFFFFF))
	$fclose(m_in);
    if (RST_N != `BSV_RESET_VALUE) if (WILL_FIRE_RL_finish) $fclose(m_out);
    if (RST_N != `BSV_RESET_VALUE) if (WILL_FIRE_RL_finish) $finish(32'd1);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init)
	begin
	  TASK_fopen___d216 = $fopen("in.pcm", "rb");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init && TASK_fopen___d216 == 32'd0)
	$display("couldn't open in.pcm");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init && TASK_fopen___d216 == 32'd0) $finish(32'd1);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init)
	begin
	  TASK_fopen___d218 = $fopen("out.pcm", "wb");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init && TASK_fopen___d218 == 32'd0)
	$display("couldn't open out.pcm for write");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_init && TASK_fopen___d218 == 32'd0) $finish(32'd1);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_write)
	$fwrite(m_out, "%c", pipeline_outfifo$D_OUT[7:0]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_write)
	$fwrite(m_out, "%c", pipeline_outfifo$D_OUT[15:8]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pipeline_process)
	$display("got sample: %h", $signed(pipeline_infifo$D_OUT));
  end
  // synopsys translate_on
endmodule  // mkTestDriver

