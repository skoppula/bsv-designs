/*
 * Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
 * 
 * On Tue Feb  9 15:35:29 EST 2016
 * 
 */
#include "bluesim_primitives.h"
#include "mkTestDriver.h"


/* String declarations */
static std::string const __str_literal_8("%c", 2u);
static std::string const __str_literal_4("couldn't open in.pcm", 20u);
static std::string const __str_literal_7("couldn't open out.pcm for write", 31u);
static std::string const __str_literal_1("got sample: %h", 14u);
static std::string const __str_literal_2("in.pcm", 6u);
static std::string const __str_literal_5("out.pcm", 7u);
static std::string const __str_literal_3("rb", 2u);
static std::string const __str_literal_6("wb", 2u);


/* Constructor */
MOD_mkTestDriver::MOD_mkTestDriver(tSimStateHdl simHdl, char const *name, Module *parent)
  : Module(simHdl, name, parent),
    __clk_handle_0(BAD_CLOCK_HANDLE),
    INST_m_doneread(simHdl, "m_doneread", this, 1u, (tUInt8)0u, (tUInt8)0u),
    INST_m_in(simHdl, "m_in", this, 32u),
    INST_m_inited(simHdl, "m_inited", this, 1u, (tUInt8)0u, (tUInt8)0u),
    INST_m_out(simHdl, "m_out", this, 32u),
    INST_m_outstanding(simHdl, "m_outstanding", this, 32u, 0u),
    INST_pipeline_infifo(simHdl, "pipeline_infifo", this, 16u, 2u, 1u, 0u),
    INST_pipeline_multipliers_0(simHdl, "pipeline_multipliers_0", this),
    INST_pipeline_multipliers_1(simHdl, "pipeline_multipliers_1", this),
    INST_pipeline_multipliers_2(simHdl, "pipeline_multipliers_2", this),
    INST_pipeline_multipliers_3(simHdl, "pipeline_multipliers_3", this),
    INST_pipeline_multipliers_4(simHdl, "pipeline_multipliers_4", this),
    INST_pipeline_multipliers_5(simHdl, "pipeline_multipliers_5", this),
    INST_pipeline_multipliers_6(simHdl, "pipeline_multipliers_6", this),
    INST_pipeline_multipliers_7(simHdl, "pipeline_multipliers_7", this),
    INST_pipeline_multipliers_8(simHdl, "pipeline_multipliers_8", this),
    INST_pipeline_outfifo(simHdl, "pipeline_outfifo", this, 16u, 2u, 1u, 0u),
    INST_pipeline_r_0(simHdl, "pipeline_r_0", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_1(simHdl, "pipeline_r_1", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_2(simHdl, "pipeline_r_2", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_3(simHdl, "pipeline_r_3", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_4(simHdl, "pipeline_r_4", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_5(simHdl, "pipeline_r_5", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_6(simHdl, "pipeline_r_6", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_r_7(simHdl, "pipeline_r_7", this, 16u, 0u, (tUInt8)0u),
    INST_pipeline_submit(simHdl, "pipeline_submit", this, 1u, (tUInt8)0u, (tUInt8)0u),
    PORT_RST_N((tUInt8)1u),
    DEF_b__h7655(2863311530u),
    DEF_x__h7809(2863311530u),
    DEF_TASK_fopen___d75(2863311530u),
    DEF_TASK_fopen___d73(2863311530u)
{
  symbol_count = 43u;
  symbols = new tSym[symbol_count];
  init_symbols_0();
}


/* Symbol init fns */

void MOD_mkTestDriver::init_symbols_0()
{
  init_symbol(&symbols[0u], "CAN_FIRE_RL_finish", SYM_DEF, &DEF_CAN_FIRE_RL_finish, 1u);
  init_symbol(&symbols[1u], "CAN_FIRE_RL_init", SYM_DEF, &DEF_CAN_FIRE_RL_init, 1u);
  init_symbol(&symbols[2u],
	      "CAN_FIRE_RL_pipeline_getMultiplication",
	      SYM_DEF,
	      &DEF_CAN_FIRE_RL_pipeline_getMultiplication,
	      1u);
  init_symbol(&symbols[3u],
	      "CAN_FIRE_RL_pipeline_process",
	      SYM_DEF,
	      &DEF_CAN_FIRE_RL_pipeline_process,
	      1u);
  init_symbol(&symbols[4u], "CAN_FIRE_RL_read", SYM_DEF, &DEF_CAN_FIRE_RL_read, 1u);
  init_symbol(&symbols[5u], "CAN_FIRE_RL_write", SYM_DEF, &DEF_CAN_FIRE_RL_write, 1u);
  init_symbol(&symbols[6u], "m_doneread", SYM_MODULE, &INST_m_doneread);
  init_symbol(&symbols[7u], "m_in", SYM_MODULE, &INST_m_in);
  init_symbol(&symbols[8u], "m_inited", SYM_MODULE, &INST_m_inited);
  init_symbol(&symbols[9u], "m_out", SYM_MODULE, &INST_m_out);
  init_symbol(&symbols[10u], "m_outstanding", SYM_MODULE, &INST_m_outstanding);
  init_symbol(&symbols[11u], "pipeline_infifo", SYM_MODULE, &INST_pipeline_infifo);
  init_symbol(&symbols[12u], "pipeline_multipliers_0", SYM_MODULE, &INST_pipeline_multipliers_0);
  init_symbol(&symbols[13u], "pipeline_multipliers_1", SYM_MODULE, &INST_pipeline_multipliers_1);
  init_symbol(&symbols[14u], "pipeline_multipliers_2", SYM_MODULE, &INST_pipeline_multipliers_2);
  init_symbol(&symbols[15u], "pipeline_multipliers_3", SYM_MODULE, &INST_pipeline_multipliers_3);
  init_symbol(&symbols[16u], "pipeline_multipliers_4", SYM_MODULE, &INST_pipeline_multipliers_4);
  init_symbol(&symbols[17u], "pipeline_multipliers_5", SYM_MODULE, &INST_pipeline_multipliers_5);
  init_symbol(&symbols[18u], "pipeline_multipliers_6", SYM_MODULE, &INST_pipeline_multipliers_6);
  init_symbol(&symbols[19u], "pipeline_multipliers_7", SYM_MODULE, &INST_pipeline_multipliers_7);
  init_symbol(&symbols[20u], "pipeline_multipliers_8", SYM_MODULE, &INST_pipeline_multipliers_8);
  init_symbol(&symbols[21u], "pipeline_outfifo", SYM_MODULE, &INST_pipeline_outfifo);
  init_symbol(&symbols[22u], "pipeline_r_0", SYM_MODULE, &INST_pipeline_r_0);
  init_symbol(&symbols[23u], "pipeline_r_1", SYM_MODULE, &INST_pipeline_r_1);
  init_symbol(&symbols[24u], "pipeline_r_2", SYM_MODULE, &INST_pipeline_r_2);
  init_symbol(&symbols[25u], "pipeline_r_3", SYM_MODULE, &INST_pipeline_r_3);
  init_symbol(&symbols[26u], "pipeline_r_4", SYM_MODULE, &INST_pipeline_r_4);
  init_symbol(&symbols[27u], "pipeline_r_5", SYM_MODULE, &INST_pipeline_r_5);
  init_symbol(&symbols[28u], "pipeline_r_6", SYM_MODULE, &INST_pipeline_r_6);
  init_symbol(&symbols[29u], "pipeline_r_7", SYM_MODULE, &INST_pipeline_r_7);
  init_symbol(&symbols[30u], "pipeline_submit", SYM_MODULE, &INST_pipeline_submit);
  init_symbol(&symbols[31u], "RL_finish", SYM_RULE);
  init_symbol(&symbols[32u], "RL_init", SYM_RULE);
  init_symbol(&symbols[33u], "RL_pipeline_getMultiplication", SYM_RULE);
  init_symbol(&symbols[34u], "RL_pipeline_process", SYM_RULE);
  init_symbol(&symbols[35u], "RL_read", SYM_RULE);
  init_symbol(&symbols[36u], "RL_write", SYM_RULE);
  init_symbol(&symbols[37u], "WILL_FIRE_RL_finish", SYM_DEF, &DEF_WILL_FIRE_RL_finish, 1u);
  init_symbol(&symbols[38u], "WILL_FIRE_RL_init", SYM_DEF, &DEF_WILL_FIRE_RL_init, 1u);
  init_symbol(&symbols[39u],
	      "WILL_FIRE_RL_pipeline_getMultiplication",
	      SYM_DEF,
	      &DEF_WILL_FIRE_RL_pipeline_getMultiplication,
	      1u);
  init_symbol(&symbols[40u],
	      "WILL_FIRE_RL_pipeline_process",
	      SYM_DEF,
	      &DEF_WILL_FIRE_RL_pipeline_process,
	      1u);
  init_symbol(&symbols[41u], "WILL_FIRE_RL_read", SYM_DEF, &DEF_WILL_FIRE_RL_read, 1u);
  init_symbol(&symbols[42u], "WILL_FIRE_RL_write", SYM_DEF, &DEF_WILL_FIRE_RL_write, 1u);
}


/* Rule actions */

void MOD_mkTestDriver::RL_pipeline_process()
{
  tUInt32 DEF_b__h3705;
  tUInt32 DEF_b__h3892;
  tUInt32 DEF_b__h4077;
  tUInt32 DEF_b__h4268;
  tUInt32 DEF_b__h4469;
  tUInt32 DEF_b__h4688;
  tUInt32 DEF_b__h4905;
  tUInt32 DEF_b__h5140;
  tUInt32 DEF_pipeline_infifo_first____d23;
  tUInt32 DEF_signed_pipeline_infifo_first__3___d24;
  DEF_pipeline_infifo_first____d23 = INST_pipeline_infifo.METH_first();
  DEF_signed_pipeline_infifo_first__3___d24 = DEF_pipeline_infifo_first____d23;
  DEF_b__h5140 = INST_pipeline_r_7.METH_read();
  DEF_b__h4905 = INST_pipeline_r_6.METH_read();
  DEF_b__h4688 = INST_pipeline_r_5.METH_read();
  DEF_b__h4469 = INST_pipeline_r_4.METH_read();
  DEF_b__h4268 = INST_pipeline_r_3.METH_read();
  DEF_b__h4077 = INST_pipeline_r_2.METH_read();
  DEF_b__h3892 = INST_pipeline_r_1.METH_read();
  DEF_b__h3705 = INST_pipeline_r_0.METH_read();
  if (!(PORT_RST_N == (tUInt8)0u))
    dollar_display(sim_hdl, this, "s,-16", &__str_literal_1, DEF_signed_pipeline_infifo_first__3___d24);
  INST_pipeline_infifo.METH_deq();
  INST_pipeline_multipliers_0.METH_putOperands(4294966483u, DEF_pipeline_infifo_first____d23);
  INST_pipeline_multipliers_2.METH_putOperands(4294966424u, DEF_b__h3892);
  INST_pipeline_multipliers_1.METH_putOperands(0u, DEF_b__h3705);
  INST_pipeline_multipliers_3.METH_putOperands(0u, DEF_b__h4077);
  INST_pipeline_multipliers_4.METH_putOperands(53615u, DEF_b__h4268);
  INST_pipeline_multipliers_5.METH_putOperands(0u, DEF_b__h4469);
  INST_pipeline_multipliers_6.METH_putOperands(4294966424u, DEF_b__h4688);
  INST_pipeline_multipliers_7.METH_putOperands(0u, DEF_b__h4905);
  INST_pipeline_multipliers_8.METH_putOperands(4294966483u, DEF_b__h5140);
  INST_pipeline_r_0.METH_write(DEF_pipeline_infifo_first____d23);
  INST_pipeline_r_1.METH_write(DEF_b__h3705);
  INST_pipeline_r_2.METH_write(DEF_b__h3892);
  INST_pipeline_r_3.METH_write(DEF_b__h4077);
  INST_pipeline_r_4.METH_write(DEF_b__h4268);
  INST_pipeline_r_5.METH_write(DEF_b__h4469);
  INST_pipeline_r_6.METH_write(DEF_b__h4688);
  INST_pipeline_submit.METH_write((tUInt8)1u);
  INST_pipeline_r_7.METH_write(DEF_b__h4905);
}

void MOD_mkTestDriver::RL_pipeline_getMultiplication()
{
  tUInt32 DEF_x__h5959;
  tUInt32 DEF_x__h6021;
  tUInt32 DEF_x__h6083;
  tUInt32 DEF_x__h6145;
  tUInt32 DEF_x__h6207;
  tUInt32 DEF_x__h6269;
  tUInt32 DEF_x__h6331;
  tUInt32 DEF_x__h6393;
  tUInt32 DEF_pipeline_multipliers_0_getResult_3_PLUS_pipeli_ETC___d70;
  tUInt32 DEF_AVMeth_pipeline_multipliers_8_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_7_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_6_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_5_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_4_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_3_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_2_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_0_getResult;
  tUInt32 DEF_AVMeth_pipeline_multipliers_1_getResult;
  DEF_AVMeth_pipeline_multipliers_0_getResult = INST_pipeline_multipliers_0.METH_getResult();
  DEF_AVMeth_pipeline_multipliers_1_getResult = INST_pipeline_multipliers_1.METH_getResult();
  DEF_x__h5959 = DEF_AVMeth_pipeline_multipliers_0_getResult + DEF_AVMeth_pipeline_multipliers_1_getResult;
  DEF_AVMeth_pipeline_multipliers_2_getResult = INST_pipeline_multipliers_2.METH_getResult();
  DEF_x__h6021 = DEF_x__h5959 + DEF_AVMeth_pipeline_multipliers_2_getResult;
  DEF_AVMeth_pipeline_multipliers_3_getResult = INST_pipeline_multipliers_3.METH_getResult();
  DEF_x__h6083 = DEF_x__h6021 + DEF_AVMeth_pipeline_multipliers_3_getResult;
  DEF_AVMeth_pipeline_multipliers_4_getResult = INST_pipeline_multipliers_4.METH_getResult();
  DEF_x__h6145 = DEF_x__h6083 + DEF_AVMeth_pipeline_multipliers_4_getResult;
  DEF_AVMeth_pipeline_multipliers_5_getResult = INST_pipeline_multipliers_5.METH_getResult();
  DEF_x__h6207 = DEF_x__h6145 + DEF_AVMeth_pipeline_multipliers_5_getResult;
  DEF_AVMeth_pipeline_multipliers_6_getResult = INST_pipeline_multipliers_6.METH_getResult();
  DEF_x__h6269 = DEF_x__h6207 + DEF_AVMeth_pipeline_multipliers_6_getResult;
  DEF_AVMeth_pipeline_multipliers_7_getResult = INST_pipeline_multipliers_7.METH_getResult();
  DEF_x__h6331 = DEF_x__h6269 + DEF_AVMeth_pipeline_multipliers_7_getResult;
  DEF_AVMeth_pipeline_multipliers_8_getResult = INST_pipeline_multipliers_8.METH_getResult();
  DEF_x__h6393 = DEF_x__h6331 + DEF_AVMeth_pipeline_multipliers_8_getResult;
  DEF_pipeline_multipliers_0_getResult_3_PLUS_pipeli_ETC___d70 = (tUInt32)(DEF_x__h6393 >> 16u);
  INST_pipeline_submit.METH_write((tUInt8)0u);
  INST_pipeline_outfifo.METH_enq(DEF_pipeline_multipliers_0_getResult_3_PLUS_pipeli_ETC___d70);
}

void MOD_mkTestDriver::RL_init()
{
  tUInt8 DEF_TASK_fopen_3_EQ_0___d74;
  tUInt8 DEF_TASK_fopen_5_EQ_0___d76;
  INST_m_inited.METH_write((tUInt8)1u);
  if (!(PORT_RST_N == (tUInt8)0u))
    DEF_TASK_fopen___d73 = dollar_fopen("s,s", &__str_literal_2, &__str_literal_3);
  DEF_TASK_fopen_3_EQ_0___d74 = DEF_TASK_fopen___d73 == 0u;
  if (!(PORT_RST_N == (tUInt8)0u))
  {
    if (DEF_TASK_fopen_3_EQ_0___d74)
      dollar_display(sim_hdl, this, "s", &__str_literal_4);
    if (DEF_TASK_fopen_3_EQ_0___d74)
      dollar_finish(sim_hdl, "32", 1u);
  }
  INST_m_in.METH_write(DEF_TASK_fopen___d73);
  if (!(PORT_RST_N == (tUInt8)0u))
    DEF_TASK_fopen___d75 = dollar_fopen("s,s", &__str_literal_5, &__str_literal_6);
  DEF_TASK_fopen_5_EQ_0___d76 = DEF_TASK_fopen___d75 == 0u;
  if (!(PORT_RST_N == (tUInt8)0u))
  {
    if (DEF_TASK_fopen_5_EQ_0___d76)
      dollar_display(sim_hdl, this, "s", &__str_literal_7);
    if (DEF_TASK_fopen_5_EQ_0___d76)
      dollar_finish(sim_hdl, "32", 1u);
  }
  INST_m_out.METH_write(DEF_TASK_fopen___d75);
}

void MOD_mkTestDriver::RL_read()
{
  tUInt32 DEF_TASK_fgetc_9_BITS_7_TO_0_5_CONCAT_TASK_fgetc_7_ETC___d97;
  tUInt8 DEF_NOT_TASK_fgetc_7_EQ_4294967295_8_2_AND_NOT_TAS_ETC___d94;
  tUInt8 DEF_TASK_fgetc_7_EQ_4294967295_8_OR_TASK_fgetc_9_E_ETC___d91;
  tUInt8 DEF_TASK_fgetc_7_EQ_4294967295___d88;
  tUInt8 DEF_TASK_fgetc_9_EQ_4294967295___d90;
  tUInt8 DEF_a8__h7753;
  tUInt8 DEF_b8__h7754;
  tUInt32 DEF_m_in___d86;
  DEF_m_in___d86 = INST_m_in.METH_read();
  if (!(PORT_RST_N == (tUInt8)0u))
    DEF_x__h7809 = dollar_fgetc("32", DEF_m_in___d86);
  DEF_a8__h7753 = (tUInt8)((tUInt8)255u & DEF_x__h7809);
  DEF_TASK_fgetc_7_EQ_4294967295___d88 = DEF_x__h7809 == 4294967295u;
  if (!(PORT_RST_N == (tUInt8)0u))
    DEF_b__h7655 = dollar_fgetc("32", DEF_m_in___d86);
  DEF_b8__h7754 = (tUInt8)((tUInt8)255u & DEF_b__h7655);
  DEF_TASK_fgetc_9_EQ_4294967295___d90 = DEF_b__h7655 == 4294967295u;
  DEF_TASK_fgetc_7_EQ_4294967295_8_OR_TASK_fgetc_9_E_ETC___d91 = DEF_TASK_fgetc_7_EQ_4294967295___d88 || DEF_TASK_fgetc_9_EQ_4294967295___d90;
  DEF_NOT_TASK_fgetc_7_EQ_4294967295_8_2_AND_NOT_TAS_ETC___d94 = !DEF_TASK_fgetc_7_EQ_4294967295___d88 && !DEF_TASK_fgetc_9_EQ_4294967295___d90;
  DEF_TASK_fgetc_9_BITS_7_TO_0_5_CONCAT_TASK_fgetc_7_ETC___d97 = 65535u & ((((tUInt32)(DEF_b8__h7754)) << 8u) | (tUInt32)(DEF_a8__h7753));
  if (DEF_TASK_fgetc_7_EQ_4294967295_8_OR_TASK_fgetc_9_E_ETC___d91)
    INST_m_doneread.METH_write((tUInt8)1u);
  if (!(PORT_RST_N == (tUInt8)0u))
    if (DEF_TASK_fgetc_7_EQ_4294967295_8_OR_TASK_fgetc_9_E_ETC___d91)
      dollar_fclose("32", DEF_m_in___d86);
  if (DEF_NOT_TASK_fgetc_7_EQ_4294967295_8_2_AND_NOT_TAS_ETC___d94)
    INST_pipeline_infifo.METH_enq(DEF_TASK_fgetc_9_BITS_7_TO_0_5_CONCAT_TASK_fgetc_7_ETC___d97);
  if (DEF_NOT_TASK_fgetc_7_EQ_4294967295_8_2_AND_NOT_TAS_ETC___d94)
    INST_m_outstanding.METH_addA(1u);
}

void MOD_mkTestDriver::RL_write()
{
  tUInt8 DEF_a8__h7972;
  tUInt8 DEF_b8__h7973;
  tUInt32 DEF_pipeline_outfifo_first____d101;
  DEF_m_out___d100 = INST_m_out.METH_read();
  DEF_pipeline_outfifo_first____d101 = INST_pipeline_outfifo.METH_first();
  DEF_b8__h7973 = (tUInt8)(DEF_pipeline_outfifo_first____d101 >> 8u);
  DEF_a8__h7972 = (tUInt8)((tUInt8)255u & DEF_pipeline_outfifo_first____d101);
  INST_pipeline_outfifo.METH_deq();
  INST_m_outstanding.METH_addB(4294967295u);
  if (!(PORT_RST_N == (tUInt8)0u))
  {
    dollar_fwrite(sim_hdl, this, "32,s,8", DEF_m_out___d100, &__str_literal_8, DEF_a8__h7972);
    dollar_fwrite(sim_hdl, this, "32,s,8", DEF_m_out___d100, &__str_literal_8, DEF_b8__h7973);
  }
}

void MOD_mkTestDriver::RL_finish()
{
  DEF_m_out___d100 = INST_m_out.METH_read();
  if (!(PORT_RST_N == (tUInt8)0u))
  {
    dollar_fclose("32", DEF_m_out___d100);
    dollar_finish(sim_hdl, "32", 1u);
  }
}


/* Methods */


/* Reset routines */

void MOD_mkTestDriver::reset_RST_N(tUInt8 ARG_rst_in)
{
  PORT_RST_N = ARG_rst_in;
  INST_pipeline_submit.reset_RST(ARG_rst_in);
  INST_pipeline_r_7.reset_RST(ARG_rst_in);
  INST_pipeline_r_6.reset_RST(ARG_rst_in);
  INST_pipeline_r_5.reset_RST(ARG_rst_in);
  INST_pipeline_r_4.reset_RST(ARG_rst_in);
  INST_pipeline_r_3.reset_RST(ARG_rst_in);
  INST_pipeline_r_2.reset_RST(ARG_rst_in);
  INST_pipeline_r_1.reset_RST(ARG_rst_in);
  INST_pipeline_r_0.reset_RST(ARG_rst_in);
  INST_pipeline_outfifo.reset_RST(ARG_rst_in);
  INST_pipeline_multipliers_8.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_7.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_6.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_5.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_4.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_3.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_2.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_1.reset_RST_N(ARG_rst_in);
  INST_pipeline_multipliers_0.reset_RST_N(ARG_rst_in);
  INST_pipeline_infifo.reset_RST(ARG_rst_in);
  INST_m_outstanding.reset_RST(ARG_rst_in);
  INST_m_inited.reset_RST(ARG_rst_in);
  INST_m_doneread.reset_RST(ARG_rst_in);
}


/* Static handles to reset routines */


/* Functions for the parent module to register its reset fns */


/* Functions to set the elaborated clock id */

void MOD_mkTestDriver::set_clk_0(char const *s)
{
  __clk_handle_0 = bk_get_or_define_clock(sim_hdl, s);
}


/* State dumping routine */
void MOD_mkTestDriver::dump_state(unsigned int indent)
{
  printf("%*s%s:\n", indent, "", inst_name);
  INST_m_doneread.dump_state(indent + 2u);
  INST_m_in.dump_state(indent + 2u);
  INST_m_inited.dump_state(indent + 2u);
  INST_m_out.dump_state(indent + 2u);
  INST_m_outstanding.dump_state(indent + 2u);
  INST_pipeline_infifo.dump_state(indent + 2u);
  INST_pipeline_multipliers_0.dump_state(indent + 2u);
  INST_pipeline_multipliers_1.dump_state(indent + 2u);
  INST_pipeline_multipliers_2.dump_state(indent + 2u);
  INST_pipeline_multipliers_3.dump_state(indent + 2u);
  INST_pipeline_multipliers_4.dump_state(indent + 2u);
  INST_pipeline_multipliers_5.dump_state(indent + 2u);
  INST_pipeline_multipliers_6.dump_state(indent + 2u);
  INST_pipeline_multipliers_7.dump_state(indent + 2u);
  INST_pipeline_multipliers_8.dump_state(indent + 2u);
  INST_pipeline_outfifo.dump_state(indent + 2u);
  INST_pipeline_r_0.dump_state(indent + 2u);
  INST_pipeline_r_1.dump_state(indent + 2u);
  INST_pipeline_r_2.dump_state(indent + 2u);
  INST_pipeline_r_3.dump_state(indent + 2u);
  INST_pipeline_r_4.dump_state(indent + 2u);
  INST_pipeline_r_5.dump_state(indent + 2u);
  INST_pipeline_r_6.dump_state(indent + 2u);
  INST_pipeline_r_7.dump_state(indent + 2u);
  INST_pipeline_submit.dump_state(indent + 2u);
}


/* VCD dumping routines */

unsigned int MOD_mkTestDriver::dump_VCD_defs(unsigned int levels)
{
  vcd_write_scope_start(sim_hdl, inst_name);
  vcd_num = vcd_reserve_ids(sim_hdl, 34u);
  unsigned int num = vcd_num;
  for (unsigned int clk = 0u; clk < bk_num_clocks(sim_hdl); ++clk)
    vcd_add_clock_def(sim_hdl, this, bk_clock_name(sim_hdl, clk), bk_clock_vcd_num(sim_hdl, clk));
  vcd_write_def(sim_hdl, bk_clock_vcd_num(sim_hdl, __clk_handle_0), "CLK", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_finish", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_init", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_pipeline_getMultiplication", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_pipeline_process", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_read", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "CAN_FIRE_RL_write", 1u);
  vcd_write_def(sim_hdl, num++, "RST_N", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "TASK_fopen___d73", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "TASK_fopen___d75", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_finish", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_init", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_pipeline_getMultiplication", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_pipeline_process", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_read", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "WILL_FIRE_RL_write", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "b__h7655", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "m_out___d100", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "x__h7809", 32u);
  num = INST_m_doneread.dump_VCD_defs(num);
  num = INST_m_in.dump_VCD_defs(num);
  num = INST_m_inited.dump_VCD_defs(num);
  num = INST_m_out.dump_VCD_defs(num);
  num = INST_m_outstanding.dump_VCD_defs(num);
  num = INST_pipeline_infifo.dump_VCD_defs(num);
  num = INST_pipeline_outfifo.dump_VCD_defs(num);
  num = INST_pipeline_r_0.dump_VCD_defs(num);
  num = INST_pipeline_r_1.dump_VCD_defs(num);
  num = INST_pipeline_r_2.dump_VCD_defs(num);
  num = INST_pipeline_r_3.dump_VCD_defs(num);
  num = INST_pipeline_r_4.dump_VCD_defs(num);
  num = INST_pipeline_r_5.dump_VCD_defs(num);
  num = INST_pipeline_r_6.dump_VCD_defs(num);
  num = INST_pipeline_r_7.dump_VCD_defs(num);
  num = INST_pipeline_submit.dump_VCD_defs(num);
  if (levels != 1u)
  {
    unsigned int l = levels == 0u ? 0u : levels - 1u;
    num = INST_pipeline_multipliers_0.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_1.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_2.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_3.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_4.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_5.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_6.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_7.dump_VCD_defs(l);
    num = INST_pipeline_multipliers_8.dump_VCD_defs(l);
  }
  vcd_write_scope_end(sim_hdl);
  return num;
}

void MOD_mkTestDriver::dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkTestDriver &backing)
{
  vcd_defs(dt, backing);
  vcd_prims(dt, backing);
  if (levels != 1u)
    vcd_submodules(dt, levels - 1u, backing);
}

void MOD_mkTestDriver::vcd_defs(tVCDDumpType dt, MOD_mkTestDriver &backing)
{
  unsigned int num = vcd_num;
  if (dt == VCD_DUMP_XS)
  {
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
  }
  else
    if (dt == VCD_DUMP_CHANGES)
    {
      if ((backing.DEF_CAN_FIRE_RL_finish) != DEF_CAN_FIRE_RL_finish)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_finish, 1u);
	backing.DEF_CAN_FIRE_RL_finish = DEF_CAN_FIRE_RL_finish;
      }
      ++num;
      if ((backing.DEF_CAN_FIRE_RL_init) != DEF_CAN_FIRE_RL_init)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_init, 1u);
	backing.DEF_CAN_FIRE_RL_init = DEF_CAN_FIRE_RL_init;
      }
      ++num;
      if ((backing.DEF_CAN_FIRE_RL_pipeline_getMultiplication) != DEF_CAN_FIRE_RL_pipeline_getMultiplication)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_pipeline_getMultiplication, 1u);
	backing.DEF_CAN_FIRE_RL_pipeline_getMultiplication = DEF_CAN_FIRE_RL_pipeline_getMultiplication;
      }
      ++num;
      if ((backing.DEF_CAN_FIRE_RL_pipeline_process) != DEF_CAN_FIRE_RL_pipeline_process)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_pipeline_process, 1u);
	backing.DEF_CAN_FIRE_RL_pipeline_process = DEF_CAN_FIRE_RL_pipeline_process;
      }
      ++num;
      if ((backing.DEF_CAN_FIRE_RL_read) != DEF_CAN_FIRE_RL_read)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_read, 1u);
	backing.DEF_CAN_FIRE_RL_read = DEF_CAN_FIRE_RL_read;
      }
      ++num;
      if ((backing.DEF_CAN_FIRE_RL_write) != DEF_CAN_FIRE_RL_write)
      {
	vcd_write_val(sim_hdl, num, DEF_CAN_FIRE_RL_write, 1u);
	backing.DEF_CAN_FIRE_RL_write = DEF_CAN_FIRE_RL_write;
      }
      ++num;
      if ((backing.PORT_RST_N) != PORT_RST_N)
      {
	vcd_write_val(sim_hdl, num, PORT_RST_N, 1u);
	backing.PORT_RST_N = PORT_RST_N;
      }
      ++num;
      if ((backing.DEF_TASK_fopen___d73) != DEF_TASK_fopen___d73)
      {
	vcd_write_val(sim_hdl, num, DEF_TASK_fopen___d73, 32u);
	backing.DEF_TASK_fopen___d73 = DEF_TASK_fopen___d73;
      }
      ++num;
      if ((backing.DEF_TASK_fopen___d75) != DEF_TASK_fopen___d75)
      {
	vcd_write_val(sim_hdl, num, DEF_TASK_fopen___d75, 32u);
	backing.DEF_TASK_fopen___d75 = DEF_TASK_fopen___d75;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_finish) != DEF_WILL_FIRE_RL_finish)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_finish, 1u);
	backing.DEF_WILL_FIRE_RL_finish = DEF_WILL_FIRE_RL_finish;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_init) != DEF_WILL_FIRE_RL_init)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_init, 1u);
	backing.DEF_WILL_FIRE_RL_init = DEF_WILL_FIRE_RL_init;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_pipeline_getMultiplication) != DEF_WILL_FIRE_RL_pipeline_getMultiplication)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_pipeline_getMultiplication, 1u);
	backing.DEF_WILL_FIRE_RL_pipeline_getMultiplication = DEF_WILL_FIRE_RL_pipeline_getMultiplication;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_pipeline_process) != DEF_WILL_FIRE_RL_pipeline_process)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_pipeline_process, 1u);
	backing.DEF_WILL_FIRE_RL_pipeline_process = DEF_WILL_FIRE_RL_pipeline_process;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_read) != DEF_WILL_FIRE_RL_read)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_read, 1u);
	backing.DEF_WILL_FIRE_RL_read = DEF_WILL_FIRE_RL_read;
      }
      ++num;
      if ((backing.DEF_WILL_FIRE_RL_write) != DEF_WILL_FIRE_RL_write)
      {
	vcd_write_val(sim_hdl, num, DEF_WILL_FIRE_RL_write, 1u);
	backing.DEF_WILL_FIRE_RL_write = DEF_WILL_FIRE_RL_write;
      }
      ++num;
      if ((backing.DEF_b__h7655) != DEF_b__h7655)
      {
	vcd_write_val(sim_hdl, num, DEF_b__h7655, 32u);
	backing.DEF_b__h7655 = DEF_b__h7655;
      }
      ++num;
      if ((backing.DEF_m_out___d100) != DEF_m_out___d100)
      {
	vcd_write_val(sim_hdl, num, DEF_m_out___d100, 32u);
	backing.DEF_m_out___d100 = DEF_m_out___d100;
      }
      ++num;
      if ((backing.DEF_x__h7809) != DEF_x__h7809)
      {
	vcd_write_val(sim_hdl, num, DEF_x__h7809, 32u);
	backing.DEF_x__h7809 = DEF_x__h7809;
      }
      ++num;
    }
    else
    {
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_finish, 1u);
      backing.DEF_CAN_FIRE_RL_finish = DEF_CAN_FIRE_RL_finish;
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_init, 1u);
      backing.DEF_CAN_FIRE_RL_init = DEF_CAN_FIRE_RL_init;
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_pipeline_getMultiplication, 1u);
      backing.DEF_CAN_FIRE_RL_pipeline_getMultiplication = DEF_CAN_FIRE_RL_pipeline_getMultiplication;
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_pipeline_process, 1u);
      backing.DEF_CAN_FIRE_RL_pipeline_process = DEF_CAN_FIRE_RL_pipeline_process;
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_read, 1u);
      backing.DEF_CAN_FIRE_RL_read = DEF_CAN_FIRE_RL_read;
      vcd_write_val(sim_hdl, num++, DEF_CAN_FIRE_RL_write, 1u);
      backing.DEF_CAN_FIRE_RL_write = DEF_CAN_FIRE_RL_write;
      vcd_write_val(sim_hdl, num++, PORT_RST_N, 1u);
      backing.PORT_RST_N = PORT_RST_N;
      vcd_write_val(sim_hdl, num++, DEF_TASK_fopen___d73, 32u);
      backing.DEF_TASK_fopen___d73 = DEF_TASK_fopen___d73;
      vcd_write_val(sim_hdl, num++, DEF_TASK_fopen___d75, 32u);
      backing.DEF_TASK_fopen___d75 = DEF_TASK_fopen___d75;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_finish, 1u);
      backing.DEF_WILL_FIRE_RL_finish = DEF_WILL_FIRE_RL_finish;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_init, 1u);
      backing.DEF_WILL_FIRE_RL_init = DEF_WILL_FIRE_RL_init;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_pipeline_getMultiplication, 1u);
      backing.DEF_WILL_FIRE_RL_pipeline_getMultiplication = DEF_WILL_FIRE_RL_pipeline_getMultiplication;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_pipeline_process, 1u);
      backing.DEF_WILL_FIRE_RL_pipeline_process = DEF_WILL_FIRE_RL_pipeline_process;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_read, 1u);
      backing.DEF_WILL_FIRE_RL_read = DEF_WILL_FIRE_RL_read;
      vcd_write_val(sim_hdl, num++, DEF_WILL_FIRE_RL_write, 1u);
      backing.DEF_WILL_FIRE_RL_write = DEF_WILL_FIRE_RL_write;
      vcd_write_val(sim_hdl, num++, DEF_b__h7655, 32u);
      backing.DEF_b__h7655 = DEF_b__h7655;
      vcd_write_val(sim_hdl, num++, DEF_m_out___d100, 32u);
      backing.DEF_m_out___d100 = DEF_m_out___d100;
      vcd_write_val(sim_hdl, num++, DEF_x__h7809, 32u);
      backing.DEF_x__h7809 = DEF_x__h7809;
    }
}

void MOD_mkTestDriver::vcd_prims(tVCDDumpType dt, MOD_mkTestDriver &backing)
{
  INST_m_doneread.dump_VCD(dt, backing.INST_m_doneread);
  INST_m_in.dump_VCD(dt, backing.INST_m_in);
  INST_m_inited.dump_VCD(dt, backing.INST_m_inited);
  INST_m_out.dump_VCD(dt, backing.INST_m_out);
  INST_m_outstanding.dump_VCD(dt, backing.INST_m_outstanding);
  INST_pipeline_infifo.dump_VCD(dt, backing.INST_pipeline_infifo);
  INST_pipeline_outfifo.dump_VCD(dt, backing.INST_pipeline_outfifo);
  INST_pipeline_r_0.dump_VCD(dt, backing.INST_pipeline_r_0);
  INST_pipeline_r_1.dump_VCD(dt, backing.INST_pipeline_r_1);
  INST_pipeline_r_2.dump_VCD(dt, backing.INST_pipeline_r_2);
  INST_pipeline_r_3.dump_VCD(dt, backing.INST_pipeline_r_3);
  INST_pipeline_r_4.dump_VCD(dt, backing.INST_pipeline_r_4);
  INST_pipeline_r_5.dump_VCD(dt, backing.INST_pipeline_r_5);
  INST_pipeline_r_6.dump_VCD(dt, backing.INST_pipeline_r_6);
  INST_pipeline_r_7.dump_VCD(dt, backing.INST_pipeline_r_7);
  INST_pipeline_submit.dump_VCD(dt, backing.INST_pipeline_submit);
}

void MOD_mkTestDriver::vcd_submodules(tVCDDumpType dt,
				      unsigned int levels,
				      MOD_mkTestDriver &backing)
{
  INST_pipeline_multipliers_0.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_0);
  INST_pipeline_multipliers_1.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_1);
  INST_pipeline_multipliers_2.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_2);
  INST_pipeline_multipliers_3.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_3);
  INST_pipeline_multipliers_4.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_4);
  INST_pipeline_multipliers_5.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_5);
  INST_pipeline_multipliers_6.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_6);
  INST_pipeline_multipliers_7.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_7);
  INST_pipeline_multipliers_8.dump_VCD(dt, levels, backing.INST_pipeline_multipliers_8);
}
