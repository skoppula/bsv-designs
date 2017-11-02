/*
 * Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
 * 
 * On Wed Nov  1 19:24:27 EDT 2017
 * 
 */
#include "bluesim_primitives.h"
#include "model_mkTbPE.h"

#include <cstdlib>
#include <time.h>
#include "bluesim_kernel_api.h"
#include "bs_vcd.h"
#include "bs_reset.h"


/* Constructor */
MODEL_mkTbPE::MODEL_mkTbPE()
{
  mkTbPE_instance = NULL;
}

/* Function for creating a new model */
void * new_MODEL_mkTbPE()
{
  MODEL_mkTbPE *model = new MODEL_mkTbPE();
  return (void *)(model);
}

/* Schedule functions */

static void schedule_posedge_CLK(tSimStateHdl simHdl, void *instance_ptr)
       {
	 MOD_mkTbPE &INST_top = *((MOD_mkTbPE *)(instance_ptr));
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_test_dot_product;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_test_dot_product;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_test_nonlinearity;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_test_nonlinearity;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_test_rw_weights;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_test_rw_weights;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_test_end;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_test_end;
	 DEF_INST_top_DEF_CAN_FIRE_RL_test_dot_product = (tUInt8)1u;
	 DEF_INST_top_DEF_WILL_FIRE_RL_test_dot_product = DEF_INST_top_DEF_CAN_FIRE_RL_test_dot_product;
	 INST_top.DEF_x__h14205 = INST_top.INST_cycle3.METH_read();
	 INST_top.DEF_x__h14211 = INST_top.INST_cycle1.METH_read();
	 INST_top.DEF_x__h14218 = INST_top.INST_cycle2.METH_read();
	 INST_top.DEF_cycle2_63_ULE_8___d467 = (INST_top.DEF_x__h14218) <= 8u;
	 INST_top.DEF_NOT_cycle2_63_ULE_8_67___d484 = !(INST_top.DEF_cycle2_63_ULE_8___d467);
	 DEF_INST_top_DEF_CAN_FIRE_RL_test_end = (!((INST_top.DEF_x__h14205) <= 11u) && !((INST_top.DEF_x__h14211) <= 10u)) && INST_top.DEF_NOT_cycle2_63_ULE_8_67___d484;
	 DEF_INST_top_DEF_WILL_FIRE_RL_test_end = DEF_INST_top_DEF_CAN_FIRE_RL_test_end;
	 DEF_INST_top_DEF_CAN_FIRE_RL_test_nonlinearity = (tUInt8)1u;
	 DEF_INST_top_DEF_WILL_FIRE_RL_test_nonlinearity = DEF_INST_top_DEF_CAN_FIRE_RL_test_nonlinearity;
	 DEF_INST_top_DEF_CAN_FIRE_RL_test_rw_weights = (INST_top.DEF_x__h14218) < 10u;
	 DEF_INST_top_DEF_WILL_FIRE_RL_test_rw_weights = DEF_INST_top_DEF_CAN_FIRE_RL_test_rw_weights;
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_test_end)
	   INST_top.RL_test_end();
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_test_dot_product)
	   INST_top.RL_test_dot_product();
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_test_nonlinearity)
	   INST_top.RL_test_nonlinearity();
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_test_rw_weights)
	   INST_top.RL_test_rw_weights();
	 if (do_reset_ticks(simHdl))
	 {
	   INST_top.INST_cycle1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_cycle2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_cycle3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_weight_regs_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_pos_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_neg_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe1_step.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_weight_regs_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_pos_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_neg_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe2_step.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_weight_regs_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_pos_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_neg_partial_sum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_pe3_step.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_psum.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_psum2.rst_tick__clk__1((tUInt8)1u);
	 }
       };

/* Model creation/destruction functions */

void MODEL_mkTbPE::create_model(tSimStateHdl simHdl, bool master)
{
  sim_hdl = simHdl;
  init_reset_request_counters(sim_hdl);
  mkTbPE_instance = new MOD_mkTbPE(sim_hdl, "top", NULL);
  bk_get_or_define_clock(sim_hdl, "CLK");
  if (master)
  {
    bk_alter_clock(sim_hdl, bk_get_clock_by_name(sim_hdl, "CLK"), CLK_LOW, false, 0llu, 5llu, 5llu);
    bk_use_default_reset(sim_hdl);
  }
  bk_set_clock_event_fn(sim_hdl,
			bk_get_clock_by_name(sim_hdl, "CLK"),
			schedule_posedge_CLK,
			NULL,
			(tEdgeDirection)(POSEDGE));
  (mkTbPE_instance->set_clk_0)("CLK");
}
void MODEL_mkTbPE::destroy_model()
{
  delete mkTbPE_instance;
  mkTbPE_instance = NULL;
}
void MODEL_mkTbPE::reset_model(bool asserted)
{
  (mkTbPE_instance->reset_RST_N)(asserted ? (tUInt8)0u : (tUInt8)1u);
}
void * MODEL_mkTbPE::get_instance()
{
  return mkTbPE_instance;
}

/* Fill in version numbers */
void MODEL_mkTbPE::get_version(unsigned int *year,
			       unsigned int *month,
			       char const **annotation,
			       char const **build)
{
  *year = 2014u;
  *month = 7u;
  *annotation = "A";
  *build = "34078";
}

/* Get the model creation time */
time_t MODEL_mkTbPE::get_creation_time()
{
  
  /* Wed Nov  1 23:24:27 UTC 2017 */
  return 1509578667llu;
}

/* Control run-time licensing */
tUInt64 MODEL_mkTbPE::skip_license_check()
{
  return 0llu;
}

/* State dumping function */
void MODEL_mkTbPE::dump_state()
{
  (mkTbPE_instance->dump_state)(0u);
}

/* VCD dumping functions */
MOD_mkTbPE & mkTbPE_backing(tSimStateHdl simHdl)
{
  static MOD_mkTbPE *instance = NULL;
  if (instance == NULL)
  {
    vcd_set_backing_instance(simHdl, true);
    instance = new MOD_mkTbPE(simHdl, "top", NULL);
    vcd_set_backing_instance(simHdl, false);
  }
  return *instance;
}
void MODEL_mkTbPE::dump_VCD_defs()
{
  (mkTbPE_instance->dump_VCD_defs)(vcd_depth(sim_hdl));
}
void MODEL_mkTbPE::dump_VCD(tVCDDumpType dt)
{
  (mkTbPE_instance->dump_VCD)(dt, vcd_depth(sim_hdl), mkTbPE_backing(sim_hdl));
}
