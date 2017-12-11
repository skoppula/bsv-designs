######################################################################

# Created by Genus(TM) Synthesis Solution 16.22-s033_1 on Sat Dec 09 17:21:10 -0500 2017

# This file contains the RC script for design:mkCompareRNS

######################################################################

set_db -quiet information_level 9
set_db -quiet init_lib_search_path /u/tsmc/CRN65LP/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn65lp_200a
set_db -quiet design_mode_process no_value
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet lp_insert_clock_gating true
set_db -quiet runtime_by_stage { {to_generic 15 32 2 18}  {first_condense 8 49 4 25}  {reify 11 60 8 33}  {global_incr_map 4 64 2 36} }
set_db -quiet hdl_error_on_blackbox true
set_db -quiet tinfo_tstamp_file .rs_mrhamid.tstamp
set_db -quiet metric_enable true
set_db -quiet source_verbose_info false
set_db -quiet script_search_path {. /homes/mrhamid/6888_prj/6888_Project/sim_syn/syn/common}
set_db -quiet syn_generic_effort high
set_db -quiet lp_power_analysis_effort high
set_db -quiet flow_metrics_snapshot_uuid 354033a6
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet interconnect_mode wireload
set_db -quiet wireload_mode segmented
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/tcbn65lpwc/WireAreaForZero
set_db -quiet operating_condition:default_emulate_libset_max/tcbn65lpwc/WCCOM .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/tcbn65lpwc/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 6400.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mkCompareRNS port:mkCompareRNS/CLK
set_db -quiet clock:mkCompareRNS/clk .slew {100.0 100.0 100.0 100.0}
set_db -quiet clock:mkCompareRNS/clk .clock_network_early_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:mkCompareRNS/clk .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:mkCompareRNS/clk .clock_setup_uncertainty {100.0 100.0}
set_db -quiet clock:mkCompareRNS/clk .clock_hold_uncertainty {100.0 100.0}
define_cost_group -design design:mkCompareRNS -name cg_enable_group_clk
define_cost_group -design design:mkCompareRNS -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mkCompareRNS/clk -name create_clock_delay_domain_1_clk_R_0 port:mkCompareRNS/CLK
set_db -quiet external_delay:mkCompareRNS/create_clock_delay_domain_1_clk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mkCompareRNS/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:mkCompareRNS/CLK
set_db -quiet external_delay:mkCompareRNS/create_clock_delay_domain_1_clk_F_0 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43 port:mkCompareRNS/RST_N
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_1_1 {{port:mkCompareRNS/request_put[63]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_2_1 {{port:mkCompareRNS/request_put[62]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_3_1 {{port:mkCompareRNS/request_put[61]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_4_1 {{port:mkCompareRNS/request_put[60]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_5_1 {{port:mkCompareRNS/request_put[59]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_6_1 {{port:mkCompareRNS/request_put[58]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_7_1 {{port:mkCompareRNS/request_put[57]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_8_1 {{port:mkCompareRNS/request_put[56]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_9_1 {{port:mkCompareRNS/request_put[55]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_10_1 {{port:mkCompareRNS/request_put[54]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_11_1 {{port:mkCompareRNS/request_put[53]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_12_1 {{port:mkCompareRNS/request_put[52]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_13_1 {{port:mkCompareRNS/request_put[51]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_14_1 {{port:mkCompareRNS/request_put[50]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_15_1 {{port:mkCompareRNS/request_put[49]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_16_1 {{port:mkCompareRNS/request_put[48]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_17_1 {{port:mkCompareRNS/request_put[47]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_18_1 {{port:mkCompareRNS/request_put[46]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_19_1 {{port:mkCompareRNS/request_put[45]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_20_1 {{port:mkCompareRNS/request_put[44]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_21_1 {{port:mkCompareRNS/request_put[43]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_22_1 {{port:mkCompareRNS/request_put[42]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_23_1 {{port:mkCompareRNS/request_put[41]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_24_1 {{port:mkCompareRNS/request_put[40]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_25_1 {{port:mkCompareRNS/request_put[39]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_26_1 {{port:mkCompareRNS/request_put[38]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_27_1 {{port:mkCompareRNS/request_put[37]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_28_1 {{port:mkCompareRNS/request_put[36]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_29_1 {{port:mkCompareRNS/request_put[35]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_30_1 {{port:mkCompareRNS/request_put[34]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_31_1 {{port:mkCompareRNS/request_put[33]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_32_1 {{port:mkCompareRNS/request_put[32]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_33_1 {{port:mkCompareRNS/request_put[31]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_34_1 {{port:mkCompareRNS/request_put[30]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_35_1 {{port:mkCompareRNS/request_put[29]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_36_1 {{port:mkCompareRNS/request_put[28]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_37_1 {{port:mkCompareRNS/request_put[27]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_38_1 {{port:mkCompareRNS/request_put[26]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_39_1 {{port:mkCompareRNS/request_put[25]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_40_1 {{port:mkCompareRNS/request_put[24]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_41_1 {{port:mkCompareRNS/request_put[23]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_42_1 {{port:mkCompareRNS/request_put[22]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_43_1 {{port:mkCompareRNS/request_put[21]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_44_1 {{port:mkCompareRNS/request_put[20]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_45_1 {{port:mkCompareRNS/request_put[19]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_46_1 {{port:mkCompareRNS/request_put[18]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_47_1 {{port:mkCompareRNS/request_put[17]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_48_1 {{port:mkCompareRNS/request_put[16]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_49_1 {{port:mkCompareRNS/request_put[15]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_50_1 {{port:mkCompareRNS/request_put[14]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_51_1 {{port:mkCompareRNS/request_put[13]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_52_1 {{port:mkCompareRNS/request_put[12]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_53_1 {{port:mkCompareRNS/request_put[11]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_54_1 {{port:mkCompareRNS/request_put[10]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_55_1 {{port:mkCompareRNS/request_put[9]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_56_1 {{port:mkCompareRNS/request_put[8]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_57_1 {{port:mkCompareRNS/request_put[7]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_58_1 {{port:mkCompareRNS/request_put[6]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_59_1 {{port:mkCompareRNS/request_put[5]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_60_1 {{port:mkCompareRNS/request_put[4]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_61_1 {{port:mkCompareRNS/request_put[3]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_62_1 {{port:mkCompareRNS/request_put[2]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_63_1 {{port:mkCompareRNS/request_put[1]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_64_1 {{port:mkCompareRNS/request_put[0]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_65_1 port:mkCompareRNS/EN_request_put
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_43_66_1 port:mkCompareRNS/EN_response_get
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44 port:mkCompareRNS/RST_N
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_67_1 {{port:mkCompareRNS/request_put[63]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_68_1 {{port:mkCompareRNS/request_put[62]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_69_1 {{port:mkCompareRNS/request_put[61]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_70_1 {{port:mkCompareRNS/request_put[60]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_71_1 {{port:mkCompareRNS/request_put[59]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_72_1 {{port:mkCompareRNS/request_put[58]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_73_1 {{port:mkCompareRNS/request_put[57]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_74_1 {{port:mkCompareRNS/request_put[56]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_75_1 {{port:mkCompareRNS/request_put[55]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_76_1 {{port:mkCompareRNS/request_put[54]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_77_1 {{port:mkCompareRNS/request_put[53]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_78_1 {{port:mkCompareRNS/request_put[52]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_79_1 {{port:mkCompareRNS/request_put[51]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_80_1 {{port:mkCompareRNS/request_put[50]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_81_1 {{port:mkCompareRNS/request_put[49]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_82_1 {{port:mkCompareRNS/request_put[48]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_83_1 {{port:mkCompareRNS/request_put[47]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_84_1 {{port:mkCompareRNS/request_put[46]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_85_1 {{port:mkCompareRNS/request_put[45]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_86_1 {{port:mkCompareRNS/request_put[44]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_87_1 {{port:mkCompareRNS/request_put[43]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_88_1 {{port:mkCompareRNS/request_put[42]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_89_1 {{port:mkCompareRNS/request_put[41]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_90_1 {{port:mkCompareRNS/request_put[40]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_91_1 {{port:mkCompareRNS/request_put[39]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_92_1 {{port:mkCompareRNS/request_put[38]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_93_1 {{port:mkCompareRNS/request_put[37]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_94_1 {{port:mkCompareRNS/request_put[36]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_95_1 {{port:mkCompareRNS/request_put[35]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_96_1 {{port:mkCompareRNS/request_put[34]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_97_1 {{port:mkCompareRNS/request_put[33]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_98_1 {{port:mkCompareRNS/request_put[32]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_99_1 {{port:mkCompareRNS/request_put[31]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_100_1 {{port:mkCompareRNS/request_put[30]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_101_1 {{port:mkCompareRNS/request_put[29]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_102_1 {{port:mkCompareRNS/request_put[28]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_103_1 {{port:mkCompareRNS/request_put[27]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_104_1 {{port:mkCompareRNS/request_put[26]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_105_1 {{port:mkCompareRNS/request_put[25]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_106_1 {{port:mkCompareRNS/request_put[24]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_107_1 {{port:mkCompareRNS/request_put[23]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_108_1 {{port:mkCompareRNS/request_put[22]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_109_1 {{port:mkCompareRNS/request_put[21]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_110_1 {{port:mkCompareRNS/request_put[20]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_111_1 {{port:mkCompareRNS/request_put[19]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_112_1 {{port:mkCompareRNS/request_put[18]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_113_1 {{port:mkCompareRNS/request_put[17]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_114_1 {{port:mkCompareRNS/request_put[16]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_115_1 {{port:mkCompareRNS/request_put[15]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_116_1 {{port:mkCompareRNS/request_put[14]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_117_1 {{port:mkCompareRNS/request_put[13]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_118_1 {{port:mkCompareRNS/request_put[12]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_119_1 {{port:mkCompareRNS/request_put[11]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_120_1 {{port:mkCompareRNS/request_put[10]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_121_1 {{port:mkCompareRNS/request_put[9]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_122_1 {{port:mkCompareRNS/request_put[8]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_123_1 {{port:mkCompareRNS/request_put[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_124_1 {{port:mkCompareRNS/request_put[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_125_1 {{port:mkCompareRNS/request_put[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_126_1 {{port:mkCompareRNS/request_put[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_127_1 {{port:mkCompareRNS/request_put[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_128_1 {{port:mkCompareRNS/request_put[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_129_1 {{port:mkCompareRNS/request_put[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_130_1 {{port:mkCompareRNS/request_put[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_131_1 port:mkCompareRNS/EN_request_put
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_44_132_1 port:mkCompareRNS/EN_response_get
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48 port:mkCompareRNS/RDY_request_put
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_133_1 {{port:mkCompareRNS/response_get[31]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_134_1 {{port:mkCompareRNS/response_get[30]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_135_1 {{port:mkCompareRNS/response_get[29]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_136_1 {{port:mkCompareRNS/response_get[28]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_137_1 {{port:mkCompareRNS/response_get[27]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_138_1 {{port:mkCompareRNS/response_get[26]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_139_1 {{port:mkCompareRNS/response_get[25]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_140_1 {{port:mkCompareRNS/response_get[24]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_141_1 {{port:mkCompareRNS/response_get[23]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_142_1 {{port:mkCompareRNS/response_get[22]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_143_1 {{port:mkCompareRNS/response_get[21]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_144_1 {{port:mkCompareRNS/response_get[20]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_145_1 {{port:mkCompareRNS/response_get[19]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_146_1 {{port:mkCompareRNS/response_get[18]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_147_1 {{port:mkCompareRNS/response_get[17]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_148_1 {{port:mkCompareRNS/response_get[16]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_149_1 {{port:mkCompareRNS/response_get[15]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_150_1 {{port:mkCompareRNS/response_get[14]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_151_1 {{port:mkCompareRNS/response_get[13]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_152_1 {{port:mkCompareRNS/response_get[12]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_153_1 {{port:mkCompareRNS/response_get[11]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_154_1 {{port:mkCompareRNS/response_get[10]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_155_1 {{port:mkCompareRNS/response_get[9]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_156_1 {{port:mkCompareRNS/response_get[8]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_157_1 {{port:mkCompareRNS/response_get[7]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_158_1 {{port:mkCompareRNS/response_get[6]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_159_1 {{port:mkCompareRNS/response_get[5]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_160_1 {{port:mkCompareRNS/response_get[4]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_161_1 {{port:mkCompareRNS/response_get[3]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_162_1 {{port:mkCompareRNS/response_get[2]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_163_1 {{port:mkCompareRNS/response_get[1]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_164_1 {{port:mkCompareRNS/response_get[0]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_48_165_1 port:mkCompareRNS/RDY_response_get
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49 port:mkCompareRNS/RDY_request_put
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_166_1 {{port:mkCompareRNS/response_get[31]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_167_1 {{port:mkCompareRNS/response_get[30]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_168_1 {{port:mkCompareRNS/response_get[29]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_169_1 {{port:mkCompareRNS/response_get[28]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_170_1 {{port:mkCompareRNS/response_get[27]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_171_1 {{port:mkCompareRNS/response_get[26]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_172_1 {{port:mkCompareRNS/response_get[25]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_173_1 {{port:mkCompareRNS/response_get[24]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_174_1 {{port:mkCompareRNS/response_get[23]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_175_1 {{port:mkCompareRNS/response_get[22]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_176_1 {{port:mkCompareRNS/response_get[21]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_177_1 {{port:mkCompareRNS/response_get[20]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_178_1 {{port:mkCompareRNS/response_get[19]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_179_1 {{port:mkCompareRNS/response_get[18]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_180_1 {{port:mkCompareRNS/response_get[17]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_181_1 {{port:mkCompareRNS/response_get[16]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_182_1 {{port:mkCompareRNS/response_get[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_183_1 {{port:mkCompareRNS/response_get[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_184_1 {{port:mkCompareRNS/response_get[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_185_1 {{port:mkCompareRNS/response_get[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_186_1 {{port:mkCompareRNS/response_get[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_187_1 {{port:mkCompareRNS/response_get[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_188_1 {{port:mkCompareRNS/response_get[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_189_1 {{port:mkCompareRNS/response_get[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_190_1 {{port:mkCompareRNS/response_get[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_191_1 {{port:mkCompareRNS/response_get[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_192_1 {{port:mkCompareRNS/response_get[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_193_1 {{port:mkCompareRNS/response_get[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_194_1 {{port:mkCompareRNS/response_get[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_195_1 {{port:mkCompareRNS/response_get[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_196_1 {{port:mkCompareRNS/response_get[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_197_1 {{port:mkCompareRNS/response_get[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkCompareRNS/clk -name constraints_tsmc65lp_line_49_198_1 port:mkCompareRNS/RDY_response_get
path_group -paths [specify_paths -to clock:mkCompareRNS/clk]  -name clk -group cost_group:mkCompareRNS/clk -user_priority -1047552
path_group -paths [specify_paths -through {hpin:mkCompareRNS/m_c_RC_CG_HIER_INST2/enable hpin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable}]  -name cg_enable_group_clk -group cost_group:mkCompareRNS/cg_enable_group_clk
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:mkCompareRNS .max_transition 100.0
set_db -quiet design:mkCompareRNS .max_fanout 16.000
set_db -quiet design:mkCompareRNS .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 84008} {cell_count 26860} {utilization  0.00} {runtime 15 32 2 18} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 9924} {cell_count 2858} {utilization  0.00} {runtime 8 49 4 25} }{reify {wns 149} {tns 0} {vep 0} {area 5182} {cell_count 1905} {utilization  0.00} {runtime 11 60 8 33} }{global_incr_map {wns 93} {tns 0} {vep 0} {area 4874} {cell_count 1801} {utilization  0.00} {runtime 4 64 2 36} }}
set_db -quiet design:mkCompareRNS .hdl_user_name mkCompareRNS
set_db -quiet design:mkCompareRNS .hdl_filelist {{default -sv {SYNTHESIS} {/homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/compare/vlog/mkCompareRNS.v /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib/Verilog/FIFOL1.v} {/homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/compare/vlog /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib/Verilog}}}
set_db -quiet design:mkCompareRNS .verification_directory build/tsmc65lp/test_run/fv
set_db -quiet design:mkCompareRNS .max_dynamic_power 0.0
set_db -quiet design:mkCompareRNS .seq_reason_deleted {{m_b_empty_reg_reg {{merged with m_a_empty_reg_reg}}} {{/m_b_D_OUT_reg[7]12698} unloaded} {{/m_b_D_OUT_reg[6]12696} unloaded} {{/m_b_D_OUT_reg[16]12694} unloaded} {{/m_a_D_OUT_reg[12]12692} unloaded} {{/m_b_D_OUT_reg[12]12690} unloaded} {{/m_b_D_OUT_reg[14]12688} unloaded} {{/m_b_D_OUT_reg[11]12686} unloaded} {{/m_b_D_OUT_reg[5]12684} unloaded} {{/m_b_D_OUT_reg[4]12682} unloaded} {{/m_a_D_OUT_reg[6]12680} unloaded} {{/m_a_D_OUT_reg[2]12678} unloaded} {{/m_a_D_OUT_reg[4]12676} unloaded} {{/m_a_D_OUT_reg[5]12674} unloaded} {{/m_a_D_OUT_reg[3]12672} unloaded} {{/m_b_D_OUT_reg[15]12670} unloaded} {{/m_a_D_OUT_reg[16]12668} unloaded}}
set_db -quiet design:mkCompareRNS .arch_filename /homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/compare/vlog/mkCompareRNS.v
set_db -quiet design:mkCompareRNS .entity_filename /homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/compare/vlog/mkCompareRNS.v
set_db -quiet port:mkCompareRNS/CLK .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/CLK .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/CLK .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/CLK .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/CLK .min_transition no_value
set_db -quiet port:mkCompareRNS/CLK .max_fanout 16.000
set_db -quiet port:mkCompareRNS/CLK .lp_asserted_probability 0.50020
set_db -quiet port:mkCompareRNS/CLK .lp_asserted_toggle_rate 0.312656
set_db -quiet port:mkCompareRNS/RST_N .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/RST_N .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/RST_N .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/RST_N .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/RST_N .min_transition no_value
set_db -quiet port:mkCompareRNS/RST_N .max_fanout 16.000
set_db -quiet port:mkCompareRNS/RST_N .lp_asserted_probability 0.99900
set_db -quiet port:mkCompareRNS/RST_N .lp_asserted_toggle_rate 0.000156
set_db -quiet {port:mkCompareRNS/request_put[63]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[63]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[63]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[63]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[63]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[63]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[63]} .lp_asserted_probability 0.50970
set_db -quiet {port:mkCompareRNS/request_put[63]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkCompareRNS/request_put[62]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[62]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[62]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[62]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[62]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[62]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[62]} .lp_asserted_probability 0.51170
set_db -quiet {port:mkCompareRNS/request_put[62]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkCompareRNS/request_put[61]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[61]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[61]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[61]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[61]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[61]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[61]} .lp_asserted_probability 0.48580
set_db -quiet {port:mkCompareRNS/request_put[61]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {port:mkCompareRNS/request_put[60]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[60]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[60]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[60]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[60]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[60]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[60]} .lp_asserted_probability 0.44830
set_db -quiet {port:mkCompareRNS/request_put[60]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {port:mkCompareRNS/request_put[59]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[59]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[59]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[59]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[59]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[59]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[59]} .lp_asserted_probability 0.51070
set_db -quiet {port:mkCompareRNS/request_put[59]} .lp_asserted_toggle_rate 0.083469
set_db -quiet {port:mkCompareRNS/request_put[58]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[58]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[58]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[58]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[58]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[58]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[58]} .lp_asserted_probability 0.48080
set_db -quiet {port:mkCompareRNS/request_put[58]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {port:mkCompareRNS/request_put[57]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[57]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[57]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[57]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[57]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[57]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[57]} .lp_asserted_probability 0.49330
set_db -quiet {port:mkCompareRNS/request_put[57]} .lp_asserted_toggle_rate 0.080192
set_db -quiet {port:mkCompareRNS/request_put[56]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[56]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[56]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[56]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[56]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[56]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[56]} .lp_asserted_probability 0.00700
set_db -quiet {port:mkCompareRNS/request_put[56]} .lp_asserted_toggle_rate 0.002184
set_db -quiet {port:mkCompareRNS/request_put[55]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[55]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[55]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[55]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[55]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[55]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[55]} .lp_asserted_probability 0.50620
set_db -quiet {port:mkCompareRNS/request_put[55]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {port:mkCompareRNS/request_put[54]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[54]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[54]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[54]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[54]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[54]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[54]} .lp_asserted_probability 0.50820
set_db -quiet {port:mkCompareRNS/request_put[54]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {port:mkCompareRNS/request_put[53]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[53]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[53]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[53]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[53]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[53]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[53]} .lp_asserted_probability 0.50120
set_db -quiet {port:mkCompareRNS/request_put[53]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {port:mkCompareRNS/request_put[52]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[52]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[52]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[52]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[52]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[52]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[52]} .lp_asserted_probability 0.49980
set_db -quiet {port:mkCompareRNS/request_put[52]} .lp_asserted_toggle_rate 0.075824
set_db -quiet {port:mkCompareRNS/request_put[51]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[51]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[51]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[51]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[51]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[51]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[51]} .lp_asserted_probability 0.51320
set_db -quiet {port:mkCompareRNS/request_put[51]} .lp_asserted_toggle_rate 0.080816
set_db -quiet {port:mkCompareRNS/request_put[50]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[50]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[50]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[50]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[50]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[50]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[50]} .lp_asserted_probability 0.51370
set_db -quiet {port:mkCompareRNS/request_put[50]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {port:mkCompareRNS/request_put[49]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[49]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[49]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[49]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[49]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[49]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[49]} .lp_asserted_probability 0.49030
set_db -quiet {port:mkCompareRNS/request_put[49]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {port:mkCompareRNS/request_put[48]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[48]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[48]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[48]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[48]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[48]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[48]} .lp_asserted_probability 0.47330
set_db -quiet {port:mkCompareRNS/request_put[48]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[47]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[47]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[47]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[47]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[47]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[47]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[47]} .lp_asserted_probability 0.48880
set_db -quiet {port:mkCompareRNS/request_put[47]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {port:mkCompareRNS/request_put[46]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[46]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[46]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[46]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[46]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[46]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[46]} .lp_asserted_probability 0.49080
set_db -quiet {port:mkCompareRNS/request_put[46]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {port:mkCompareRNS/request_put[45]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[45]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[45]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[45]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[45]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[45]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[45]} .lp_asserted_probability 0.53120
set_db -quiet {port:mkCompareRNS/request_put[45]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {port:mkCompareRNS/request_put[44]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[44]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[44]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[44]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[44]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[44]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[44]} .lp_asserted_probability 0.48830
set_db -quiet {port:mkCompareRNS/request_put[44]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {port:mkCompareRNS/request_put[43]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[43]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[43]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[43]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[43]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[43]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[43]} .lp_asserted_probability 0.50920
set_db -quiet {port:mkCompareRNS/request_put[43]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[42]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[42]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[42]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[42]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[42]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[42]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[42]} .lp_asserted_probability 0.50320
set_db -quiet {port:mkCompareRNS/request_put[42]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {port:mkCompareRNS/request_put[41]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[41]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[41]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[41]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[41]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[41]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[41]} .lp_asserted_probability 0.47280
set_db -quiet {port:mkCompareRNS/request_put[41]} .lp_asserted_toggle_rate 0.074108
set_db -quiet {port:mkCompareRNS/request_put[40]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[40]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[40]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[40]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[40]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[40]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[40]} .lp_asserted_probability 0.00500
set_db -quiet {port:mkCompareRNS/request_put[40]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {port:mkCompareRNS/request_put[39]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[39]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[39]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[39]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[39]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[39]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[39]} .lp_asserted_probability 0.50620
set_db -quiet {port:mkCompareRNS/request_put[39]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkCompareRNS/request_put[38]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[38]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[38]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[38]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[38]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[38]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[38]} .lp_asserted_probability 0.49980
set_db -quiet {port:mkCompareRNS/request_put[38]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {port:mkCompareRNS/request_put[37]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[37]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[37]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[37]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[37]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[37]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[37]} .lp_asserted_probability 0.48580
set_db -quiet {port:mkCompareRNS/request_put[37]} .lp_asserted_toggle_rate 0.082376
set_db -quiet {port:mkCompareRNS/request_put[36]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[36]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[36]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[36]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[36]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[36]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[36]} .lp_asserted_probability 0.50270
set_db -quiet {port:mkCompareRNS/request_put[36]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {port:mkCompareRNS/request_put[35]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[35]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[35]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[35]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[35]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[35]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[35]} .lp_asserted_probability 0.50020
set_db -quiet {port:mkCompareRNS/request_put[35]} .lp_asserted_toggle_rate 0.081440
set_db -quiet {port:mkCompareRNS/request_put[34]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[34]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[34]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[34]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[34]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[34]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[34]} .lp_asserted_probability 0.48830
set_db -quiet {port:mkCompareRNS/request_put[34]} .lp_asserted_toggle_rate 0.073328
set_db -quiet {port:mkCompareRNS/request_put[33]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[33]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[33]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[33]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[33]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[33]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[33]} .lp_asserted_probability 0.48130
set_db -quiet {port:mkCompareRNS/request_put[33]} .lp_asserted_toggle_rate 0.073640
set_db -quiet {port:mkCompareRNS/request_put[32]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[32]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[32]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[32]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[32]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[32]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[32]} .lp_asserted_probability 0.47830
set_db -quiet {port:mkCompareRNS/request_put[32]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[31]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[31]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[31]} .lp_asserted_probability 0.52170
set_db -quiet {port:mkCompareRNS/request_put[31]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {port:mkCompareRNS/request_put[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[30]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[30]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[30]} .lp_asserted_probability 0.47880
set_db -quiet {port:mkCompareRNS/request_put[30]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {port:mkCompareRNS/request_put[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[29]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[29]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[29]} .lp_asserted_probability 0.48480
set_db -quiet {port:mkCompareRNS/request_put[29]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {port:mkCompareRNS/request_put[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[28]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[28]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[28]} .lp_asserted_probability 0.49430
set_db -quiet {port:mkCompareRNS/request_put[28]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {port:mkCompareRNS/request_put[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[27]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[27]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[27]} .lp_asserted_probability 0.49930
set_db -quiet {port:mkCompareRNS/request_put[27]} .lp_asserted_toggle_rate 0.073640
set_db -quiet {port:mkCompareRNS/request_put[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[26]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[26]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[26]} .lp_asserted_probability 0.50020
set_db -quiet {port:mkCompareRNS/request_put[26]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {port:mkCompareRNS/request_put[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[25]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[25]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[25]} .lp_asserted_probability 0.50470
set_db -quiet {port:mkCompareRNS/request_put[25]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {port:mkCompareRNS/request_put[24]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[24]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[24]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[24]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[24]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[24]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[24]} .lp_asserted_probability 0.01000
set_db -quiet {port:mkCompareRNS/request_put[24]} .lp_asserted_toggle_rate 0.003120
set_db -quiet {port:mkCompareRNS/request_put[23]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[23]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[23]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[23]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[23]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[23]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[23]} .lp_asserted_probability 0.50170
set_db -quiet {port:mkCompareRNS/request_put[23]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {port:mkCompareRNS/request_put[22]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[22]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[22]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[22]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[22]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[22]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[22]} .lp_asserted_probability 0.49280
set_db -quiet {port:mkCompareRNS/request_put[22]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {port:mkCompareRNS/request_put[21]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[21]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[21]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[21]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[21]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[21]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[21]} .lp_asserted_probability 0.50370
set_db -quiet {port:mkCompareRNS/request_put[21]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {port:mkCompareRNS/request_put[20]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[20]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[20]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[20]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[20]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[20]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[20]} .lp_asserted_probability 0.49280
set_db -quiet {port:mkCompareRNS/request_put[20]} .lp_asserted_toggle_rate 0.083000
set_db -quiet {port:mkCompareRNS/request_put[19]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[19]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[19]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[19]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[19]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[19]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[19]} .lp_asserted_probability 0.51920
set_db -quiet {port:mkCompareRNS/request_put[19]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {port:mkCompareRNS/request_put[18]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[18]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[18]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[18]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[18]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[18]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[18]} .lp_asserted_probability 0.53170
set_db -quiet {port:mkCompareRNS/request_put[18]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[17]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[17]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[17]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[17]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[17]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[17]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[17]} .lp_asserted_probability 0.46780
set_db -quiet {port:mkCompareRNS/request_put[17]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[16]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[16]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[16]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[16]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[16]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[16]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[16]} .lp_asserted_probability 0.48680
set_db -quiet {port:mkCompareRNS/request_put[16]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {port:mkCompareRNS/request_put[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[15]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[15]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[15]} .lp_asserted_probability 0.49830
set_db -quiet {port:mkCompareRNS/request_put[15]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {port:mkCompareRNS/request_put[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[14]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[14]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[14]} .lp_asserted_probability 0.51070
set_db -quiet {port:mkCompareRNS/request_put[14]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {port:mkCompareRNS/request_put[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[13]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[13]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[13]} .lp_asserted_probability 0.50570
set_db -quiet {port:mkCompareRNS/request_put[13]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {port:mkCompareRNS/request_put[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[12]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[12]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[12]} .lp_asserted_probability 0.49680
set_db -quiet {port:mkCompareRNS/request_put[12]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {port:mkCompareRNS/request_put[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[11]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[11]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[11]} .lp_asserted_probability 0.52120
set_db -quiet {port:mkCompareRNS/request_put[11]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {port:mkCompareRNS/request_put[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[10]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[10]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[10]} .lp_asserted_probability 0.51170
set_db -quiet {port:mkCompareRNS/request_put[10]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {port:mkCompareRNS/request_put[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[9]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[9]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[9]} .lp_asserted_probability 0.49230
set_db -quiet {port:mkCompareRNS/request_put[9]} .lp_asserted_toggle_rate 0.082064
set_db -quiet {port:mkCompareRNS/request_put[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[8]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[8]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[8]} .lp_asserted_probability 0.00500
set_db -quiet {port:mkCompareRNS/request_put[8]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {port:mkCompareRNS/request_put[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[7]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[7]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[7]} .lp_asserted_probability 0.50070
set_db -quiet {port:mkCompareRNS/request_put[7]} .lp_asserted_toggle_rate 0.074264
set_db -quiet {port:mkCompareRNS/request_put[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[6]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[6]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[6]} .lp_asserted_probability 0.50520
set_db -quiet {port:mkCompareRNS/request_put[6]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {port:mkCompareRNS/request_put[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[5]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[5]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[5]} .lp_asserted_probability 0.47430
set_db -quiet {port:mkCompareRNS/request_put[5]} .lp_asserted_toggle_rate 0.074420
set_db -quiet {port:mkCompareRNS/request_put[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[4]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[4]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[4]} .lp_asserted_probability 0.50520
set_db -quiet {port:mkCompareRNS/request_put[4]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/request_put[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[3]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[3]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[3]} .lp_asserted_probability 0.51520
set_db -quiet {port:mkCompareRNS/request_put[3]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {port:mkCompareRNS/request_put[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[2]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[2]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[2]} .lp_asserted_probability 0.50820
set_db -quiet {port:mkCompareRNS/request_put[2]} .lp_asserted_toggle_rate 0.082688
set_db -quiet {port:mkCompareRNS/request_put[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[1]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[1]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[1]} .lp_asserted_probability 0.49130
set_db -quiet {port:mkCompareRNS/request_put[1]} .lp_asserted_toggle_rate 0.081752
set_db -quiet {port:mkCompareRNS/request_put[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkCompareRNS/request_put[0]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/request_put[0]} .max_fanout 16.000
set_db -quiet {port:mkCompareRNS/request_put[0]} .lp_asserted_probability 0.49130
set_db -quiet {port:mkCompareRNS/request_put[0]} .lp_asserted_toggle_rate 0.079256
set_db -quiet port:mkCompareRNS/EN_request_put .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_request_put .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_request_put .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_request_put .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_request_put .min_transition no_value
set_db -quiet port:mkCompareRNS/EN_request_put .max_fanout 16.000
set_db -quiet port:mkCompareRNS/EN_request_put .lp_asserted_probability 0.99800
set_db -quiet port:mkCompareRNS/EN_request_put .lp_asserted_toggle_rate 0.000780
set_db -quiet port:mkCompareRNS/EN_response_get .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_response_get .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_response_get .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_response_get .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkCompareRNS/EN_response_get .min_transition no_value
set_db -quiet port:mkCompareRNS/EN_response_get .max_fanout 16.000
set_db -quiet port:mkCompareRNS/EN_response_get .lp_asserted_probability 0.99600
set_db -quiet port:mkCompareRNS/EN_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet port:mkCompareRNS/RDY_request_put .external_pin_cap_min 5.0
set_db -quiet port:mkCompareRNS/RDY_request_put .external_capacitance_max {5.0 5.0}
set_db -quiet port:mkCompareRNS/RDY_request_put .external_capacitance_min 5.0
set_db -quiet port:mkCompareRNS/RDY_request_put .min_transition no_value
set_db -quiet port:mkCompareRNS/RDY_request_put .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[31]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[31]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[31]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[31]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[31]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[31]} .lp_asserted_probability 0.52120
set_db -quiet {port:mkCompareRNS/response_get[31]} .lp_asserted_toggle_rate 0.075980
set_db -quiet {port:mkCompareRNS/response_get[30]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[30]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[30]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[30]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[30]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[30]} .lp_asserted_probability 0.50820
set_db -quiet {port:mkCompareRNS/response_get[30]} .lp_asserted_toggle_rate 0.080972
set_db -quiet {port:mkCompareRNS/response_get[29]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[29]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[29]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[29]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[29]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[29]} .lp_asserted_probability 0.46730
set_db -quiet {port:mkCompareRNS/response_get[29]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {port:mkCompareRNS/response_get[28]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[28]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[28]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[28]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[28]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[28]} .lp_asserted_probability 0.48330
set_db -quiet {port:mkCompareRNS/response_get[28]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {port:mkCompareRNS/response_get[27]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[27]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[27]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[27]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[27]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[27]} .lp_asserted_probability 0.51970
set_db -quiet {port:mkCompareRNS/response_get[27]} .lp_asserted_toggle_rate 0.078164
set_db -quiet {port:mkCompareRNS/response_get[26]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[26]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[26]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[26]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[26]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[26]} .lp_asserted_probability 0.49630
set_db -quiet {port:mkCompareRNS/response_get[26]} .lp_asserted_toggle_rate 0.075044
set_db -quiet {port:mkCompareRNS/response_get[25]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[25]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[25]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[25]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[25]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[25]} .lp_asserted_probability 0.49630
set_db -quiet {port:mkCompareRNS/response_get[25]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {port:mkCompareRNS/response_get[24]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[24]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[24]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[24]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[24]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[24]} .lp_asserted_probability 0.00800
set_db -quiet {port:mkCompareRNS/response_get[24]} .lp_asserted_toggle_rate 0.002496
set_db -quiet {port:mkCompareRNS/response_get[23]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[23]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[23]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[23]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[23]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[23]} .lp_asserted_probability 0.49580
set_db -quiet {port:mkCompareRNS/response_get[23]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {port:mkCompareRNS/response_get[22]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[22]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[22]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[22]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[22]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[22]} .lp_asserted_probability 0.48530
set_db -quiet {port:mkCompareRNS/response_get[22]} .lp_asserted_toggle_rate 0.073171
set_db -quiet {port:mkCompareRNS/response_get[21]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[21]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[21]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[21]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[21]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[21]} .lp_asserted_probability 0.49280
set_db -quiet {port:mkCompareRNS/response_get[21]} .lp_asserted_toggle_rate 0.082376
set_db -quiet {port:mkCompareRNS/response_get[20]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[20]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[20]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[20]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[20]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[20]} .lp_asserted_probability 0.50620
set_db -quiet {port:mkCompareRNS/response_get[20]} .lp_asserted_toggle_rate 0.081596
set_db -quiet {port:mkCompareRNS/response_get[19]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[19]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[19]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[19]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[19]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[19]} .lp_asserted_probability 0.52420
set_db -quiet {port:mkCompareRNS/response_get[19]} .lp_asserted_toggle_rate 0.080660
set_db -quiet {port:mkCompareRNS/response_get[18]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[18]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[18]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[18]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[18]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[18]} .lp_asserted_probability 0.51320
set_db -quiet {port:mkCompareRNS/response_get[18]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {port:mkCompareRNS/response_get[17]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[17]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[17]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[17]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[17]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[17]} .lp_asserted_probability 0.46730
set_db -quiet {port:mkCompareRNS/response_get[17]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {port:mkCompareRNS/response_get[16]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[16]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[16]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[16]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[16]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[16]} .lp_asserted_probability 0.48930
set_db -quiet {port:mkCompareRNS/response_get[16]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {port:mkCompareRNS/response_get[15]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[15]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[15]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[15]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[15]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[15]} .lp_asserted_probability 0.51070
set_db -quiet {port:mkCompareRNS/response_get[15]} .lp_asserted_toggle_rate 0.074576
set_db -quiet {port:mkCompareRNS/response_get[14]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[14]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[14]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[14]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[14]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[14]} .lp_asserted_probability 0.47780
set_db -quiet {port:mkCompareRNS/response_get[14]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkCompareRNS/response_get[13]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[13]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[13]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[13]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[13]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[13]} .lp_asserted_probability 0.50770
set_db -quiet {port:mkCompareRNS/response_get[13]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {port:mkCompareRNS/response_get[12]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[12]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[12]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[12]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[12]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[12]} .lp_asserted_probability 0.48230
set_db -quiet {port:mkCompareRNS/response_get[12]} .lp_asserted_toggle_rate 0.074576
set_db -quiet {port:mkCompareRNS/response_get[11]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[11]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[11]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[11]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[11]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[11]} .lp_asserted_probability 0.51170
set_db -quiet {port:mkCompareRNS/response_get[11]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkCompareRNS/response_get[10]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[10]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[10]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[10]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[10]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[10]} .lp_asserted_probability 0.50620
set_db -quiet {port:mkCompareRNS/response_get[10]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {port:mkCompareRNS/response_get[9]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[9]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[9]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[9]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[9]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[9]} .lp_asserted_probability 0.49730
set_db -quiet {port:mkCompareRNS/response_get[9]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {port:mkCompareRNS/response_get[8]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[8]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[8]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[8]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[8]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[8]} .lp_asserted_probability 0.00800
set_db -quiet {port:mkCompareRNS/response_get[8]} .lp_asserted_toggle_rate 0.002496
set_db -quiet {port:mkCompareRNS/response_get[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[7]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[7]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[7]} .lp_asserted_probability 0.50020
set_db -quiet {port:mkCompareRNS/response_get[7]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {port:mkCompareRNS/response_get[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[6]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[6]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[6]} .lp_asserted_probability 0.51320
set_db -quiet {port:mkCompareRNS/response_get[6]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkCompareRNS/response_get[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[5]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[5]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[5]} .lp_asserted_probability 0.46780
set_db -quiet {port:mkCompareRNS/response_get[5]} .lp_asserted_toggle_rate 0.080036
set_db -quiet {port:mkCompareRNS/response_get[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[4]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[4]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[4]} .lp_asserted_probability 0.48030
set_db -quiet {port:mkCompareRNS/response_get[4]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkCompareRNS/response_get[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[3]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[3]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[3]} .lp_asserted_probability 0.49330
set_db -quiet {port:mkCompareRNS/response_get[3]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {port:mkCompareRNS/response_get[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[2]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[2]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[2]} .lp_asserted_probability 0.48380
set_db -quiet {port:mkCompareRNS/response_get[2]} .lp_asserted_toggle_rate 0.080660
set_db -quiet {port:mkCompareRNS/response_get[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[1]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[1]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[1]} .lp_asserted_probability 0.48030
set_db -quiet {port:mkCompareRNS/response_get[1]} .lp_asserted_toggle_rate 0.074420
set_db -quiet {port:mkCompareRNS/response_get[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[0]} .external_capacitance_min 5.0
set_db -quiet {port:mkCompareRNS/response_get[0]} .min_transition no_value
set_db -quiet {port:mkCompareRNS/response_get[0]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkCompareRNS/response_get[0]} .lp_asserted_probability 0.48580
set_db -quiet {port:mkCompareRNS/response_get[0]} .lp_asserted_toggle_rate 0.077540
set_db -quiet port:mkCompareRNS/RDY_response_get .external_pin_cap_min 5.0
set_db -quiet port:mkCompareRNS/RDY_response_get .external_capacitance_max {5.0 5.0}
set_db -quiet port:mkCompareRNS/RDY_response_get .external_capacitance_min 5.0
set_db -quiet port:mkCompareRNS/RDY_response_get .min_transition no_value
set_db -quiet port:mkCompareRNS/RDY_response_get .external_pin_cap {5.0 5.0}
set_db -quiet port:mkCompareRNS/RDY_response_get .lp_asserted_probability 0.99600
set_db -quiet port:mkCompareRNS/RDY_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet {hnet:mkCompareRNS/request_put[32]} .lp_asserted_probability 0.47830
set_db -quiet {hnet:mkCompareRNS/request_put[32]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[33]} .lp_asserted_probability 0.48130
set_db -quiet {hnet:mkCompareRNS/request_put[33]} .lp_asserted_toggle_rate 0.073640
set_db -quiet {hnet:mkCompareRNS/request_put[34]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkCompareRNS/request_put[34]} .lp_asserted_toggle_rate 0.073328
set_db -quiet {hnet:mkCompareRNS/request_put[35]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkCompareRNS/request_put[35]} .lp_asserted_toggle_rate 0.081440
set_db -quiet {hnet:mkCompareRNS/request_put[36]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkCompareRNS/request_put[36]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/request_put[37]} .lp_asserted_probability 0.48580
set_db -quiet {hnet:mkCompareRNS/request_put[37]} .lp_asserted_toggle_rate 0.082376
set_db -quiet {hnet:mkCompareRNS/request_put[38]} .lp_asserted_probability 0.49980
set_db -quiet {hnet:mkCompareRNS/request_put[38]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {hnet:mkCompareRNS/request_put[39]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkCompareRNS/request_put[39]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkCompareRNS/request_put[40]} .lp_asserted_probability 0.00500
set_db -quiet {hnet:mkCompareRNS/request_put[40]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {hnet:mkCompareRNS/request_put[41]} .lp_asserted_probability 0.47280
set_db -quiet {hnet:mkCompareRNS/request_put[41]} .lp_asserted_toggle_rate 0.074108
set_db -quiet {hnet:mkCompareRNS/request_put[42]} .lp_asserted_probability 0.50320
set_db -quiet {hnet:mkCompareRNS/request_put[42]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {hnet:mkCompareRNS/request_put[43]} .lp_asserted_probability 0.50920
set_db -quiet {hnet:mkCompareRNS/request_put[43]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[44]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkCompareRNS/request_put[44]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {hnet:mkCompareRNS/request_put[45]} .lp_asserted_probability 0.53120
set_db -quiet {hnet:mkCompareRNS/request_put[45]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkCompareRNS/request_put[46]} .lp_asserted_probability 0.49080
set_db -quiet {hnet:mkCompareRNS/request_put[46]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkCompareRNS/request_put[47]} .lp_asserted_probability 0.48880
set_db -quiet {hnet:mkCompareRNS/request_put[47]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/request_put[48]} .lp_asserted_probability 0.47330
set_db -quiet {hnet:mkCompareRNS/request_put[48]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[49]} .lp_asserted_probability 0.49030
set_db -quiet {hnet:mkCompareRNS/request_put[49]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {hnet:mkCompareRNS/request_put[50]} .lp_asserted_probability 0.51370
set_db -quiet {hnet:mkCompareRNS/request_put[50]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkCompareRNS/request_put[51]} .lp_asserted_probability 0.51320
set_db -quiet {hnet:mkCompareRNS/request_put[51]} .lp_asserted_toggle_rate 0.080816
set_db -quiet {hnet:mkCompareRNS/request_put[52]} .lp_asserted_probability 0.49980
set_db -quiet {hnet:mkCompareRNS/request_put[52]} .lp_asserted_toggle_rate 0.075824
set_db -quiet {hnet:mkCompareRNS/request_put[53]} .lp_asserted_probability 0.50120
set_db -quiet {hnet:mkCompareRNS/request_put[53]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {hnet:mkCompareRNS/request_put[54]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkCompareRNS/request_put[54]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/request_put[55]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkCompareRNS/request_put[55]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {hnet:mkCompareRNS/request_put[56]} .lp_asserted_probability 0.00700
set_db -quiet {hnet:mkCompareRNS/request_put[56]} .lp_asserted_toggle_rate 0.002184
set_db -quiet {hnet:mkCompareRNS/request_put[57]} .lp_asserted_probability 0.49330
set_db -quiet {hnet:mkCompareRNS/request_put[57]} .lp_asserted_toggle_rate 0.080192
set_db -quiet {hnet:mkCompareRNS/request_put[58]} .lp_asserted_probability 0.48080
set_db -quiet {hnet:mkCompareRNS/request_put[58]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/request_put[59]} .lp_asserted_probability 0.51070
set_db -quiet {hnet:mkCompareRNS/request_put[59]} .lp_asserted_toggle_rate 0.083469
set_db -quiet {hnet:mkCompareRNS/request_put[60]} .lp_asserted_probability 0.44830
set_db -quiet {hnet:mkCompareRNS/request_put[60]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkCompareRNS/request_put[61]} .lp_asserted_probability 0.48580
set_db -quiet {hnet:mkCompareRNS/request_put[61]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/request_put[62]} .lp_asserted_probability 0.51170
set_db -quiet {hnet:mkCompareRNS/request_put[62]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkCompareRNS/request_put[63]} .lp_asserted_probability 0.50970
set_db -quiet {hnet:mkCompareRNS/request_put[63]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[0]} .lp_asserted_probability 0.47830
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[0]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[1]} .lp_asserted_probability 0.48130
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[1]} .lp_asserted_toggle_rate 0.073640
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[2]} .lp_asserted_probability 0.48780
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[2]} .lp_asserted_toggle_rate 0.073015
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[3]} .lp_asserted_probability 0.49980
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[3]} .lp_asserted_toggle_rate 0.081128
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[4]} .lp_asserted_probability 0.50220
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[4]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[5]} .lp_asserted_probability 0.48480
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[5]} .lp_asserted_toggle_rate 0.082064
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[6]} .lp_asserted_probability 0.49880
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[6]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[7]} .lp_asserted_probability 0.50570
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[7]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[8]} .lp_asserted_probability 0.00500
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[8]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[9]} .lp_asserted_probability 0.47230
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[9]} .lp_asserted_toggle_rate 0.073796
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[10]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[10]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[11]} .lp_asserted_probability 0.50920
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[11]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[12]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[12]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[13]} .lp_asserted_probability 0.53120
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[13]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[14]} .lp_asserted_probability 0.49030
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[14]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[15]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[15]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[16]} .lp_asserted_probability 0.47330
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[16]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[17]} .lp_asserted_probability 0.49030
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[17]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[18]} .lp_asserted_probability 0.51270
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[18]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[19]} .lp_asserted_probability 0.51270
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[19]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[20]} .lp_asserted_probability 0.49930
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[20]} .lp_asserted_toggle_rate 0.075512
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[21]} .lp_asserted_probability 0.50070
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[21]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[22]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[22]} .lp_asserted_toggle_rate 0.075980
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[23]} .lp_asserted_probability 0.50570
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[23]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[24]} .lp_asserted_probability 0.00700
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[24]} .lp_asserted_toggle_rate 0.002184
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[25]} .lp_asserted_probability 0.49280
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[25]} .lp_asserted_toggle_rate 0.079880
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[26]} .lp_asserted_probability 0.48030
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[26]} .lp_asserted_toggle_rate 0.075980
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[27]} .lp_asserted_probability 0.51020
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[27]} .lp_asserted_toggle_rate 0.083157
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[28]} .lp_asserted_probability 0.44830
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[28]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[29]} .lp_asserted_probability 0.48480
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[29]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[30]} .lp_asserted_probability 0.51120
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[30]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[31]} .lp_asserted_probability 0.50870
set_db -quiet {hnet:mkCompareRNS/m_a_D_OUT[31]} .lp_asserted_toggle_rate 0.078944
set_db -quiet hnet:mkCompareRNS/m_a_EMPTY_N .lp_asserted_probability 0.99700
set_db -quiet hnet:mkCompareRNS/m_a_EMPTY_N .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkCompareRNS/EN_request_put .lp_asserted_probability 0.99800
set_db -quiet hnet:mkCompareRNS/EN_request_put .lp_asserted_toggle_rate 0.000780
set_db -quiet {hnet:mkCompareRNS/request_put[0]} .lp_asserted_probability 0.49130
set_db -quiet {hnet:mkCompareRNS/request_put[0]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkCompareRNS/request_put[1]} .lp_asserted_probability 0.49130
set_db -quiet {hnet:mkCompareRNS/request_put[1]} .lp_asserted_toggle_rate 0.081752
set_db -quiet {hnet:mkCompareRNS/request_put[2]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkCompareRNS/request_put[2]} .lp_asserted_toggle_rate 0.082688
set_db -quiet {hnet:mkCompareRNS/request_put[3]} .lp_asserted_probability 0.51520
set_db -quiet {hnet:mkCompareRNS/request_put[3]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkCompareRNS/request_put[4]} .lp_asserted_probability 0.50520
set_db -quiet {hnet:mkCompareRNS/request_put[4]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[5]} .lp_asserted_probability 0.47430
set_db -quiet {hnet:mkCompareRNS/request_put[5]} .lp_asserted_toggle_rate 0.074420
set_db -quiet {hnet:mkCompareRNS/request_put[6]} .lp_asserted_probability 0.50520
set_db -quiet {hnet:mkCompareRNS/request_put[6]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {hnet:mkCompareRNS/request_put[7]} .lp_asserted_probability 0.50070
set_db -quiet {hnet:mkCompareRNS/request_put[7]} .lp_asserted_toggle_rate 0.074264
set_db -quiet {hnet:mkCompareRNS/request_put[8]} .lp_asserted_probability 0.00500
set_db -quiet {hnet:mkCompareRNS/request_put[8]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {hnet:mkCompareRNS/request_put[9]} .lp_asserted_probability 0.49230
set_db -quiet {hnet:mkCompareRNS/request_put[9]} .lp_asserted_toggle_rate 0.082064
set_db -quiet {hnet:mkCompareRNS/request_put[10]} .lp_asserted_probability 0.51170
set_db -quiet {hnet:mkCompareRNS/request_put[10]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {hnet:mkCompareRNS/request_put[11]} .lp_asserted_probability 0.52120
set_db -quiet {hnet:mkCompareRNS/request_put[11]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkCompareRNS/request_put[12]} .lp_asserted_probability 0.49680
set_db -quiet {hnet:mkCompareRNS/request_put[12]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkCompareRNS/request_put[13]} .lp_asserted_probability 0.50570
set_db -quiet {hnet:mkCompareRNS/request_put[13]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkCompareRNS/request_put[14]} .lp_asserted_probability 0.51070
set_db -quiet {hnet:mkCompareRNS/request_put[14]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/request_put[15]} .lp_asserted_probability 0.49830
set_db -quiet {hnet:mkCompareRNS/request_put[15]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {hnet:mkCompareRNS/request_put[16]} .lp_asserted_probability 0.48680
set_db -quiet {hnet:mkCompareRNS/request_put[16]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkCompareRNS/request_put[17]} .lp_asserted_probability 0.46780
set_db -quiet {hnet:mkCompareRNS/request_put[17]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[18]} .lp_asserted_probability 0.53170
set_db -quiet {hnet:mkCompareRNS/request_put[18]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/request_put[19]} .lp_asserted_probability 0.51920
set_db -quiet {hnet:mkCompareRNS/request_put[19]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkCompareRNS/request_put[20]} .lp_asserted_probability 0.49280
set_db -quiet {hnet:mkCompareRNS/request_put[20]} .lp_asserted_toggle_rate 0.083000
set_db -quiet {hnet:mkCompareRNS/request_put[21]} .lp_asserted_probability 0.50370
set_db -quiet {hnet:mkCompareRNS/request_put[21]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/request_put[22]} .lp_asserted_probability 0.49280
set_db -quiet {hnet:mkCompareRNS/request_put[22]} .lp_asserted_toggle_rate 0.077072
set_db -quiet {hnet:mkCompareRNS/request_put[23]} .lp_asserted_probability 0.50170
set_db -quiet {hnet:mkCompareRNS/request_put[23]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkCompareRNS/request_put[24]} .lp_asserted_probability 0.01000
set_db -quiet {hnet:mkCompareRNS/request_put[24]} .lp_asserted_toggle_rate 0.003120
set_db -quiet {hnet:mkCompareRNS/request_put[25]} .lp_asserted_probability 0.50470
set_db -quiet {hnet:mkCompareRNS/request_put[25]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {hnet:mkCompareRNS/request_put[26]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkCompareRNS/request_put[26]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkCompareRNS/request_put[27]} .lp_asserted_probability 0.49930
set_db -quiet {hnet:mkCompareRNS/request_put[27]} .lp_asserted_toggle_rate 0.073640
set_db -quiet {hnet:mkCompareRNS/request_put[28]} .lp_asserted_probability 0.49430
set_db -quiet {hnet:mkCompareRNS/request_put[28]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {hnet:mkCompareRNS/request_put[29]} .lp_asserted_probability 0.48480
set_db -quiet {hnet:mkCompareRNS/request_put[29]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/request_put[30]} .lp_asserted_probability 0.47880
set_db -quiet {hnet:mkCompareRNS/request_put[30]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {hnet:mkCompareRNS/request_put[31]} .lp_asserted_probability 0.52170
set_db -quiet {hnet:mkCompareRNS/request_put[31]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[0]} .lp_asserted_probability 0.49080
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[0]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[1]} .lp_asserted_probability 0.49130
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[1]} .lp_asserted_toggle_rate 0.081596
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[2]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[2]} .lp_asserted_toggle_rate 0.082688
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[3]} .lp_asserted_probability 0.51520
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[3]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[4]} .lp_asserted_probability 0.50470
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[4]} .lp_asserted_toggle_rate 0.078788
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[5]} .lp_asserted_probability 0.47380
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[5]} .lp_asserted_toggle_rate 0.074108
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[6]} .lp_asserted_probability 0.50470
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[6]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[7]} .lp_asserted_probability 0.49980
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[7]} .lp_asserted_toggle_rate 0.074108
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[8]} .lp_asserted_probability 0.00500
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[8]} .lp_asserted_toggle_rate 0.001560
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[9]} .lp_asserted_probability 0.49180
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[9]} .lp_asserted_toggle_rate 0.081908
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[10]} .lp_asserted_probability 0.51120
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[10]} .lp_asserted_toggle_rate 0.076136
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[11]} .lp_asserted_probability 0.52070
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[11]} .lp_asserted_toggle_rate 0.075044
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[12]} .lp_asserted_probability 0.49580
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[12]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[13]} .lp_asserted_probability 0.50470
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[13]} .lp_asserted_toggle_rate 0.076760
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[14]} .lp_asserted_probability 0.50970
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[14]} .lp_asserted_toggle_rate 0.076136
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[15]} .lp_asserted_probability 0.49830
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[15]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[16]} .lp_asserted_probability 0.48580
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[16]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[17]} .lp_asserted_probability 0.46730
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[17]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[18]} .lp_asserted_probability 0.53070
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[18]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[19]} .lp_asserted_probability 0.51870
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[19]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[20]} .lp_asserted_probability 0.49180
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[20]} .lp_asserted_toggle_rate 0.082688
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[21]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[21]} .lp_asserted_toggle_rate 0.076136
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[22]} .lp_asserted_probability 0.49230
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[22]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[23]} .lp_asserted_probability 0.50120
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[23]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[24]} .lp_asserted_probability 0.01000
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[24]} .lp_asserted_toggle_rate 0.003120
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[25]} .lp_asserted_probability 0.50420
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[25]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[26]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[26]} .lp_asserted_toggle_rate 0.075044
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[27]} .lp_asserted_probability 0.49880
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[27]} .lp_asserted_toggle_rate 0.073484
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[28]} .lp_asserted_probability 0.49380
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[28]} .lp_asserted_toggle_rate 0.076604
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[29]} .lp_asserted_probability 0.48430
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[29]} .lp_asserted_toggle_rate 0.078164
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[30]} .lp_asserted_probability 0.47830
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[30]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[31]} .lp_asserted_probability 0.52120
set_db -quiet {hnet:mkCompareRNS/m_b_D_OUT[31]} .lp_asserted_toggle_rate 0.076916
set_db -quiet hnet:mkCompareRNS/EN_response_get .lp_asserted_probability 0.99600
set_db -quiet hnet:mkCompareRNS/EN_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet {hnet:mkCompareRNS/response_get[0]} .lp_asserted_probability 0.48580
set_db -quiet {hnet:mkCompareRNS/response_get[0]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {hnet:mkCompareRNS/response_get[1]} .lp_asserted_probability 0.48030
set_db -quiet {hnet:mkCompareRNS/response_get[1]} .lp_asserted_toggle_rate 0.074420
set_db -quiet {hnet:mkCompareRNS/response_get[2]} .lp_asserted_probability 0.48380
set_db -quiet {hnet:mkCompareRNS/response_get[2]} .lp_asserted_toggle_rate 0.080660
set_db -quiet {hnet:mkCompareRNS/response_get[3]} .lp_asserted_probability 0.49330
set_db -quiet {hnet:mkCompareRNS/response_get[3]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkCompareRNS/response_get[4]} .lp_asserted_probability 0.48030
set_db -quiet {hnet:mkCompareRNS/response_get[4]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkCompareRNS/response_get[5]} .lp_asserted_probability 0.46780
set_db -quiet {hnet:mkCompareRNS/response_get[5]} .lp_asserted_toggle_rate 0.080036
set_db -quiet {hnet:mkCompareRNS/response_get[6]} .lp_asserted_probability 0.51320
set_db -quiet {hnet:mkCompareRNS/response_get[6]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkCompareRNS/response_get[7]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkCompareRNS/response_get[7]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {hnet:mkCompareRNS/response_get[8]} .lp_asserted_probability 0.00800
set_db -quiet {hnet:mkCompareRNS/response_get[8]} .lp_asserted_toggle_rate 0.002496
set_db -quiet {hnet:mkCompareRNS/response_get[9]} .lp_asserted_probability 0.49730
set_db -quiet {hnet:mkCompareRNS/response_get[9]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {hnet:mkCompareRNS/response_get[10]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkCompareRNS/response_get[10]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {hnet:mkCompareRNS/response_get[11]} .lp_asserted_probability 0.51170
set_db -quiet {hnet:mkCompareRNS/response_get[11]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkCompareRNS/response_get[12]} .lp_asserted_probability 0.48230
set_db -quiet {hnet:mkCompareRNS/response_get[12]} .lp_asserted_toggle_rate 0.074576
set_db -quiet {hnet:mkCompareRNS/response_get[13]} .lp_asserted_probability 0.50770
set_db -quiet {hnet:mkCompareRNS/response_get[13]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkCompareRNS/response_get[14]} .lp_asserted_probability 0.47780
set_db -quiet {hnet:mkCompareRNS/response_get[14]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkCompareRNS/response_get[15]} .lp_asserted_probability 0.51070
set_db -quiet {hnet:mkCompareRNS/response_get[15]} .lp_asserted_toggle_rate 0.074576
set_db -quiet {hnet:mkCompareRNS/response_get[16]} .lp_asserted_probability 0.48930
set_db -quiet {hnet:mkCompareRNS/response_get[16]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {hnet:mkCompareRNS/response_get[17]} .lp_asserted_probability 0.46730
set_db -quiet {hnet:mkCompareRNS/response_get[17]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {hnet:mkCompareRNS/response_get[18]} .lp_asserted_probability 0.51320
set_db -quiet {hnet:mkCompareRNS/response_get[18]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkCompareRNS/response_get[19]} .lp_asserted_probability 0.52420
set_db -quiet {hnet:mkCompareRNS/response_get[19]} .lp_asserted_toggle_rate 0.080660
set_db -quiet {hnet:mkCompareRNS/response_get[20]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkCompareRNS/response_get[20]} .lp_asserted_toggle_rate 0.081596
set_db -quiet {hnet:mkCompareRNS/response_get[21]} .lp_asserted_probability 0.49280
set_db -quiet {hnet:mkCompareRNS/response_get[21]} .lp_asserted_toggle_rate 0.082376
set_db -quiet {hnet:mkCompareRNS/response_get[22]} .lp_asserted_probability 0.48530
set_db -quiet {hnet:mkCompareRNS/response_get[22]} .lp_asserted_toggle_rate 0.073171
set_db -quiet {hnet:mkCompareRNS/response_get[23]} .lp_asserted_probability 0.49580
set_db -quiet {hnet:mkCompareRNS/response_get[23]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {hnet:mkCompareRNS/response_get[24]} .lp_asserted_probability 0.00800
set_db -quiet {hnet:mkCompareRNS/response_get[24]} .lp_asserted_toggle_rate 0.002496
set_db -quiet {hnet:mkCompareRNS/response_get[25]} .lp_asserted_probability 0.49630
set_db -quiet {hnet:mkCompareRNS/response_get[25]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkCompareRNS/response_get[26]} .lp_asserted_probability 0.49630
set_db -quiet {hnet:mkCompareRNS/response_get[26]} .lp_asserted_toggle_rate 0.075044
set_db -quiet {hnet:mkCompareRNS/response_get[27]} .lp_asserted_probability 0.51970
set_db -quiet {hnet:mkCompareRNS/response_get[27]} .lp_asserted_toggle_rate 0.078164
set_db -quiet {hnet:mkCompareRNS/response_get[28]} .lp_asserted_probability 0.48330
set_db -quiet {hnet:mkCompareRNS/response_get[28]} .lp_asserted_toggle_rate 0.076448
set_db -quiet {hnet:mkCompareRNS/response_get[29]} .lp_asserted_probability 0.46730
set_db -quiet {hnet:mkCompareRNS/response_get[29]} .lp_asserted_toggle_rate 0.076292
set_db -quiet {hnet:mkCompareRNS/response_get[30]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkCompareRNS/response_get[30]} .lp_asserted_toggle_rate 0.080972
set_db -quiet {hnet:mkCompareRNS/response_get[31]} .lp_asserted_probability 0.52120
set_db -quiet {hnet:mkCompareRNS/response_get[31]} .lp_asserted_toggle_rate 0.075980
set_db -quiet hnet:mkCompareRNS/RDY_response_get .lp_asserted_probability 0.99600
set_db -quiet hnet:mkCompareRNS/RDY_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkCompareRNS/n_497 .lp_asserted_probability 0.50020
set_db -quiet hnet:mkCompareRNS/n_497 .lp_asserted_toggle_rate 0.074108
set_db -quiet hnet:mkCompareRNS/n_498 .lp_asserted_probability 0.49530
set_db -quiet hnet:mkCompareRNS/n_498 .lp_asserted_toggle_rate 0.076916
set_db -quiet hnet:mkCompareRNS/n_499 .lp_asserted_probability 0.51420
set_db -quiet hnet:mkCompareRNS/n_499 .lp_asserted_toggle_rate 0.077852
set_db -quiet hnet:mkCompareRNS/n_500 .lp_asserted_probability 0.51170
set_db -quiet hnet:mkCompareRNS/n_500 .lp_asserted_toggle_rate 0.078476
set_db -quiet hnet:mkCompareRNS/n_501 .lp_asserted_probability 0.50420
set_db -quiet hnet:mkCompareRNS/n_501 .lp_asserted_toggle_rate 0.077852
set_db -quiet hnet:mkCompareRNS/n_502 .lp_asserted_probability 0.49030
set_db -quiet hnet:mkCompareRNS/n_502 .lp_asserted_toggle_rate 0.076136
set_db -quiet hnet:mkCompareRNS/n_503 .lp_asserted_probability 0.47930
set_db -quiet hnet:mkCompareRNS/n_503 .lp_asserted_toggle_rate 0.075044
set_db -quiet hnet:mkCompareRNS/n_504 .lp_asserted_probability 0.52620
set_db -quiet hnet:mkCompareRNS/n_504 .lp_asserted_toggle_rate 0.074108
set_db -quiet hnet:mkCompareRNS/n_505 .lp_asserted_probability 0.49530
set_db -quiet hnet:mkCompareRNS/n_505 .lp_asserted_toggle_rate 0.078788
set_db -quiet hnet:mkCompareRNS/n_506 .lp_asserted_probability 0.50120
set_db -quiet hnet:mkCompareRNS/n_506 .lp_asserted_toggle_rate 0.075668
set_db -quiet hnet:mkCompareRNS/n_507 .lp_asserted_probability 0.51220
set_db -quiet hnet:mkCompareRNS/n_507 .lp_asserted_toggle_rate 0.073015
set_db -quiet hnet:mkCompareRNS/n_508 .lp_asserted_probability 0.49780
set_db -quiet hnet:mkCompareRNS/n_508 .lp_asserted_toggle_rate 0.078320
set_db -quiet hnet:mkCompareRNS/n_509 .lp_asserted_probability 0.51520
set_db -quiet hnet:mkCompareRNS/n_509 .lp_asserted_toggle_rate 0.082064
set_db -quiet hnet:mkCompareRNS/n_510 .lp_asserted_probability 0.50020
set_db -quiet hnet:mkCompareRNS/n_510 .lp_asserted_toggle_rate 0.081128
set_db -quiet hnet:mkCompareRNS/n_511 .lp_asserted_probability 0.50170
set_db -quiet hnet:mkCompareRNS/n_511 .lp_asserted_toggle_rate 0.076604
set_db -quiet hnet:mkCompareRNS/n_512 .lp_asserted_probability 0.52670
set_db -quiet hnet:mkCompareRNS/n_512 .lp_asserted_toggle_rate 0.078944
set_db -quiet hnet:mkCompareRNS/RST_N .lp_asserted_probability 0.99900
set_db -quiet hnet:mkCompareRNS/RST_N .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkCompareRNS/CLK .lp_asserted_probability 0.50020
set_db -quiet hnet:mkCompareRNS/CLK .lp_asserted_toggle_rate 0.312656
set_db -quiet module:mkCompareRNS/RC_CG_MOD_2 .logical_hier false
set_db -quiet module:mkCompareRNS/RC_CG_MOD_2 .boundary_opto strict_no
set_db -quiet hport:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_probability 0.50020
set_db -quiet hport:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_probability 0.50020
set_db -quiet hnet:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet inst:mkCompareRNS/m_c_RC_CG_HIER_INST2/RC_CGIC_INST .gint_phase_inversion false
set_db -quiet pin:mkCompareRNS/m_c_RC_CG_HIER_INST2/RC_CGIC_INST/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/m_c_RC_CG_HIER_INST2/RC_CGIC_INST/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet hpin:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_probability 0.50020
set_db -quiet hpin:mkCompareRNS/m_c_RC_CG_HIER_INST2/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet module:mkCompareRNS/remainder_unsigned .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_240_71 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_95 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_243_55 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_94 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_255_70 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_93 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_263_53 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_92 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_268_71 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_91 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_271_55 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkCompareRNS/remainder_unsigned_860 .logical_hier false
set_db -quiet hinst:mkCompareRNS/rem_285_55 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[0]} .orig_name {{m_a/D_OUT[0]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[0]} .single_bit_orig_name {m_a/D_OUT[0]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[0]/D} .lp_asserted_probability 0.47830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[0]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[0]/Q} .orig_name {m_a/D_OUT[0]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[0]/Q} .lp_asserted_probability 0.47830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[0]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[1]} .orig_name {{m_a/D_OUT[1]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[1]} .single_bit_orig_name {m_a/D_OUT[1]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[1]/D} .lp_asserted_probability 0.48130
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[1]/D} .lp_asserted_toggle_rate 0.073640
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[1]/Q} .orig_name {m_a/D_OUT[1]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[1]/Q} .lp_asserted_probability 0.48130
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[1]/Q} .lp_asserted_toggle_rate 0.073640
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[7]} .orig_name {{m_a/D_OUT[7]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[7]} .single_bit_orig_name {m_a/D_OUT[7]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[7]/D} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[7]/D} .lp_asserted_toggle_rate 0.079100
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[7]/Q} .orig_name {m_a/D_OUT[7]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[7]/Q} .lp_asserted_probability 0.50570
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[7]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[8]} .orig_name {{m_a/D_OUT[8]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[8]} .single_bit_orig_name {m_a/D_OUT[8]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[8]/D} .lp_asserted_probability 0.00500
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[8]/D} .lp_asserted_toggle_rate 0.001560
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[8]/Q} .orig_name {m_a/D_OUT[8]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[8]/Q} .lp_asserted_probability 0.00500
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[8]/Q} .lp_asserted_toggle_rate 0.001560
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[9]} .orig_name {{m_a/D_OUT[9]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[9]} .single_bit_orig_name {m_a/D_OUT[9]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[9]/D} .lp_asserted_probability 0.47280
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[9]/D} .lp_asserted_toggle_rate 0.074108
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[9]/Q} .orig_name {m_a/D_OUT[9]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[9]/Q} .lp_asserted_probability 0.47230
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[9]/Q} .lp_asserted_toggle_rate 0.073796
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[10]} .orig_name {{m_a/D_OUT[10]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[10]} .single_bit_orig_name {m_a/D_OUT[10]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[10]/D} .lp_asserted_probability 0.50320
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[10]/D} .lp_asserted_toggle_rate 0.077540
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[10]/Q} .orig_name {m_a/D_OUT[10]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[10]/Q} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[10]/Q} .lp_asserted_toggle_rate 0.077228
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[11]} .orig_name {{m_a/D_OUT[11]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[11]} .single_bit_orig_name {m_a/D_OUT[11]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[11]/D} .lp_asserted_probability 0.50920
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[11]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[11]/Q} .orig_name {m_a/D_OUT[11]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[11]/Q} .lp_asserted_probability 0.50920
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[11]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[13]} .orig_name {{m_a/D_OUT[13]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[13]} .single_bit_orig_name {m_a/D_OUT[13]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[13]/D} .lp_asserted_probability 0.53120
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[13]/D} .lp_asserted_toggle_rate 0.078008
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[13]/Q} .orig_name {m_a/D_OUT[13]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[13]/Q} .lp_asserted_probability 0.53120
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[13]/Q} .lp_asserted_toggle_rate 0.078008
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[14]} .orig_name {{m_a/D_OUT[14]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[14]} .single_bit_orig_name {m_a/D_OUT[14]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[14]/D} .lp_asserted_probability 0.49080
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[14]/D} .lp_asserted_toggle_rate 0.076916
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[14]/Q} .orig_name {m_a/D_OUT[14]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[14]/Q} .lp_asserted_probability 0.49030
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[14]/Q} .lp_asserted_toggle_rate 0.076604
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[15]} .orig_name {{m_a/D_OUT[15]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[15]} .single_bit_orig_name {m_a/D_OUT[15]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[15]/D} .lp_asserted_probability 0.48880
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[15]/D} .lp_asserted_toggle_rate 0.076604
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[15]/Q} .orig_name {m_a/D_OUT[15]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[15]/Q} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[15]/Q} .lp_asserted_toggle_rate 0.076292
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[0]} .orig_name {{m_b/D_OUT[0]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[0]} .single_bit_orig_name {m_b/D_OUT[0]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[0]/D} .lp_asserted_probability 0.49130
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[0]/D} .lp_asserted_toggle_rate 0.079256
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[0]/Q} .orig_name {m_b/D_OUT[0]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[0]/Q} .lp_asserted_probability 0.49080
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[0]/Q} .lp_asserted_toggle_rate 0.079100
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[1]} .orig_name {{m_b/D_OUT[1]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[1]} .single_bit_orig_name {m_b/D_OUT[1]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[1]/D} .lp_asserted_probability 0.49130
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[1]/D} .lp_asserted_toggle_rate 0.081752
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[1]/Q} .orig_name {m_b/D_OUT[1]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[1]/Q} .lp_asserted_probability 0.49130
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[1]/Q} .lp_asserted_toggle_rate 0.081596
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[2]} .orig_name {{m_b/D_OUT[2]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[2]} .single_bit_orig_name {m_b/D_OUT[2]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[2]/D} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[2]/D} .lp_asserted_toggle_rate 0.082688
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[2]/Q} .orig_name {m_b/D_OUT[2]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[2]/Q} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[2]/Q} .lp_asserted_toggle_rate 0.082688
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[3]} .orig_name {{m_b/D_OUT[3]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[3]} .single_bit_orig_name {m_b/D_OUT[3]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[3]/D} .lp_asserted_probability 0.51520
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[3]/D} .lp_asserted_toggle_rate 0.079256
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[3]/Q} .orig_name {m_b/D_OUT[3]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[3]/Q} .lp_asserted_probability 0.51520
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[3]/Q} .lp_asserted_toggle_rate 0.079256
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[8]} .orig_name {{m_b/D_OUT[8]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[8]} .single_bit_orig_name {m_b/D_OUT[8]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[8]/D} .lp_asserted_probability 0.00500
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[8]/D} .lp_asserted_toggle_rate 0.001560
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[8]/Q} .orig_name {m_b/D_OUT[8]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[8]/Q} .lp_asserted_probability 0.00500
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[8]/Q} .lp_asserted_toggle_rate 0.001560
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[9]} .orig_name {{m_b/D_OUT[9]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[9]} .single_bit_orig_name {m_b/D_OUT[9]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[9]/D} .lp_asserted_probability 0.49230
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[9]/D} .lp_asserted_toggle_rate 0.082064
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[9]/Q} .orig_name {m_b/D_OUT[9]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[9]/Q} .lp_asserted_probability 0.49180
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[9]/Q} .lp_asserted_toggle_rate 0.081908
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[10]} .orig_name {{m_b/D_OUT[10]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[10]} .single_bit_orig_name {m_b/D_OUT[10]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[10]/D} .lp_asserted_probability 0.51170
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[10]/D} .lp_asserted_toggle_rate 0.076448
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[10]/Q} .orig_name {m_b/D_OUT[10]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[10]/Q} .lp_asserted_probability 0.51120
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[10]/Q} .lp_asserted_toggle_rate 0.076136
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[13]} .orig_name {{m_b/D_OUT[13]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[13]} .single_bit_orig_name {m_b/D_OUT[13]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[13]/D} .lp_asserted_probability 0.50570
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[13]/D} .lp_asserted_toggle_rate 0.076916
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[13]/Q} .orig_name {m_b/D_OUT[13]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[13]/Q} .lp_asserted_probability 0.50470
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[13]/Q} .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12151__1237/A .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12151__1237/A .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12160__9719/A .lp_asserted_probability 0.47380
set_db -quiet pin:mkCompareRNS/g12160__9719/A .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12164__5927/A .lp_asserted_probability 0.49780
set_db -quiet pin:mkCompareRNS/g12164__5927/A .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g12192__6789/A2 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12192__6789/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12193__5927/S .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g12193__5927/S .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g12194__2001/A2 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g12194__2001/A2 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12195__1122/A1 .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g12195__1122/A1 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g12196__2005/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12196__2005/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12197__9771/A2 .lp_asserted_probability 0.48780
set_db -quiet pin:mkCompareRNS/g12197__9771/A2 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12198__3457/A2 .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g12198__3457/A2 .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g12199__1279/A1 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12199__1279/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12200__6179/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12200__6179/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12202__7557/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12202__7557/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12203__7654/A2 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12203__7654/A2 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12204__8867/A2 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12204__8867/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12205__1377/A2 .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g12205__1377/A2 .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g12206__3717/A2 .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g12206__3717/A2 .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g12207__4599/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12207__4599/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12208__3779/A1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g12208__3779/A1 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12209__2007/A2 .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g12209__2007/A2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g12210__1237/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12210__1237/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12212__1297/A1 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12212__1297/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12213__2006/A1 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12213__2006/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12214__2833/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12214__2833/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12217__9867/A2 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12217__9867/A2 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12315__7557/A2 .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12315__7557/A2 .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12329__7765/A .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g12329__7765/A .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12329__7765/B .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12329__7765/B .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g12330__9867/A .lp_asserted_probability 0.50970
set_db -quiet pin:mkCompareRNS/g12330__9867/A .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12330__9867/B .lp_asserted_probability 0.52620
set_db -quiet pin:mkCompareRNS/g12330__9867/B .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12335__1591/A2 .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12335__1591/A2 .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12336__6789/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12336__6789/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12345__1279/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12345__1279/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12352__1377/A2 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12352__1377/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12354__3717/A2 .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g12354__3717/A2 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12355__4599/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12355__4599/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12378__1122/A2 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12378__1122/A2 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12385__9771/A .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12385__9771/A .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkCompareRNS/g12385__9771/B .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g12385__9771/B .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12389__7837/A2 .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g12389__7837/A2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g12390__7557/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12390__7557/A2 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12391__7654/A2 .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12391__7654/A2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g12392__8867/A2 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12392__8867/A2 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12403__1297/A2 .lp_asserted_probability 0.47380
set_db -quiet pin:mkCompareRNS/g12403__1297/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12403__1297/B2 .lp_asserted_probability 0.47380
set_db -quiet pin:mkCompareRNS/g12403__1297/B2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12411__3377/A2 .lp_asserted_probability 0.50220
set_db -quiet pin:mkCompareRNS/g12411__3377/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g12412__9719/A2 .lp_asserted_probability 0.50220
set_db -quiet pin:mkCompareRNS/g12412__9719/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g12413__1591/A2 .lp_asserted_probability 0.52620
set_db -quiet pin:mkCompareRNS/g12413__1591/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12424__7837/A2 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12424__7837/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12424__7837/B2 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12424__7837/B2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12430__1377/A2 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12430__1377/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12431__3717/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12431__3717/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12443__3377/A2 .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12443__3377/A2 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkCompareRNS/g12443__3377/B2 .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12443__3377/B2 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkCompareRNS/g12450__5927/A2 .lp_asserted_probability 0.51220
set_db -quiet pin:mkCompareRNS/g12450__5927/A2 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12465__8867/A .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g12465__8867/A .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12465__8867/B .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g12465__8867/B .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12466__1377/A .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12466__1377/A .lp_asserted_toggle_rate 0.076292
set_db -quiet pin:mkCompareRNS/g12466__1377/B .lp_asserted_probability 0.50170
set_db -quiet pin:mkCompareRNS/g12466__1377/B .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12467__3717/A2 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g12467__3717/A2 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkCompareRNS/g12468__4599/A2 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g12468__4599/A2 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g12468__4599/B2 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g12468__4599/B2 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g12479__9867/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12479__9867/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12479__9867/B2 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12479__9867/B2 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12482__1591/A1 .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g12482__1591/A1 .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g12482__1591/A2 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12482__1591/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12485__2001/A1 .lp_asserted_probability 0.47330
set_db -quiet pin:mkCompareRNS/g12485__2001/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12485__2001/A2 .lp_asserted_probability 0.48580
set_db -quiet pin:mkCompareRNS/g12485__2001/A2 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12485__2001/B1 .lp_asserted_probability 0.48580
set_db -quiet pin:mkCompareRNS/g12485__2001/B1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12485__2001/B2 .lp_asserted_probability 0.47330
set_db -quiet pin:mkCompareRNS/g12485__2001/B2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12486__1122/A1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12486__1122/A1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12486__1122/A2 .lp_asserted_probability 0.49580
set_db -quiet pin:mkCompareRNS/g12486__1122/A2 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12486__1122/B1 .lp_asserted_probability 0.49580
set_db -quiet pin:mkCompareRNS/g12486__1122/B1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12486__1122/B2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12486__1122/B2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12488__9771/A1 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12488__9771/A1 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12488__9771/A2 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g12488__9771/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g12488__9771/B1 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g12488__9771/B1 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g12488__9771/B2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12488__9771/B2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12489__3457/A2 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g12489__3457/A2 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g12490__1279/A2 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g12490__1279/A2 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkCompareRNS/g12491__6179/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g12491__6179/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12491__6179/A2 .lp_asserted_probability 0.52070
set_db -quiet pin:mkCompareRNS/g12491__6179/A2 .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g12493__7837/A1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkCompareRNS/g12493__7837/A1 .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g12493__7837/A2 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g12493__7837/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12495__7557/A1 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12495__7557/A1 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12495__7557/A2 .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g12495__7557/A2 .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g12496__7654/A1 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12496__7654/A1 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12496__7654/A2 .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g12496__7654/A2 .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g12497__8867/A2 .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g12497__8867/A2 .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12498__1377/A1 .lp_asserted_probability 0.51170
set_db -quiet pin:mkCompareRNS/g12498__1377/A1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12498__1377/A2 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12498__1377/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12499__3717/A1 .lp_asserted_probability 0.52670
set_db -quiet pin:mkCompareRNS/g12499__3717/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12499__3717/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12499__3717/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12500__4599/A1 .lp_asserted_probability 0.47930
set_db -quiet pin:mkCompareRNS/g12500__4599/A1 .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g12500__4599/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12500__4599/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12502__3779/A1 .lp_asserted_probability 0.48580
set_db -quiet pin:mkCompareRNS/g12502__3779/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12502__3779/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12502__3779/A2 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12503__2007/A1 .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g12503__2007/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12503__2007/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12503__2007/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12504__1237/A1 .lp_asserted_probability 0.47930
set_db -quiet pin:mkCompareRNS/g12504__1237/A1 .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g12504__1237/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12504__1237/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12505__1297/A1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12505__1297/A1 .lp_asserted_toggle_rate 0.076292
set_db -quiet pin:mkCompareRNS/g12505__1297/A2 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g12505__1297/A2 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12506__2006/A1 .lp_asserted_probability 0.49780
set_db -quiet pin:mkCompareRNS/g12506__2006/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g12506__2006/A2 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g12506__2006/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g12507__2833/A1 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12507__2833/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12507__2833/A2 .lp_asserted_probability 0.49830
set_db -quiet pin:mkCompareRNS/g12507__2833/A2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12508__7547/A1 .lp_asserted_probability 0.50170
set_db -quiet pin:mkCompareRNS/g12508__7547/A1 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12508__7547/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12508__7547/A2 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12509__7765/A1 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12509__7765/A1 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12509__7765/A2 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12509__7765/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12510__9867/A1 .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12510__9867/A1 .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g12510__9867/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12510__9867/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12512__3377/A1 .lp_asserted_probability 0.47330
set_db -quiet pin:mkCompareRNS/g12512__3377/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12512__3377/A2 .lp_asserted_probability 0.51420
set_db -quiet pin:mkCompareRNS/g12512__3377/A2 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12513__9719/A1 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12513__9719/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12513__9719/A2 .lp_asserted_probability 0.52670
set_db -quiet pin:mkCompareRNS/g12513__9719/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12514__1591/A1 .lp_asserted_probability 0.49780
set_db -quiet pin:mkCompareRNS/g12514__1591/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g12514__1591/A2 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g12514__1591/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g12515__6789/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g12515__6789/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12515__6789/A2 .lp_asserted_probability 0.51220
set_db -quiet pin:mkCompareRNS/g12515__6789/A2 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12517__5927/A1 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12517__5927/A1 .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g12517__5927/A2 .lp_asserted_probability 0.51420
set_db -quiet pin:mkCompareRNS/g12517__5927/A2 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g12518__2001/A2 .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g12518__2001/A2 .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12519__1122/A1 .lp_asserted_probability 0.49530
set_db -quiet pin:mkCompareRNS/g12519__1122/A1 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g12519__1122/A2 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12519__1122/A2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12520__2005/A1 .lp_asserted_probability 0.51170
set_db -quiet pin:mkCompareRNS/g12520__2005/A1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12520__2005/A2 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g12520__2005/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12521__9771/A1 .lp_asserted_probability 0.51220
set_db -quiet pin:mkCompareRNS/g12521__9771/A1 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12521__9771/A2 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g12521__9771/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12523__3457/A1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12523__3457/A1 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g12524__1279/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12524__1279/A2 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g12525__6179/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12525__6179/A2 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g12526__7837/A1 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12526__7837/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12526__7837/A2 .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12526__7837/A2 .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12527__7557/A1 .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12527__7557/A1 .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12527__7557/A2 .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g12527__7557/A2 .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g12530/I .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g12530/I .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12533/I .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12533/I .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12539/I .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g12539/I .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g12566/I .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g12566/I .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g12572/I .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g12572/I .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkCompareRNS/g12575/I .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g12575/I .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12576/I .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g12576/I .lp_asserted_toggle_rate 0.081596
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[2]} .orig_name {{m_a/D_OUT[2]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[2]} .single_bit_orig_name {m_a/D_OUT[2]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/D} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/D} .lp_asserted_toggle_rate 0.073328
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/Q} .orig_name {m_a/D_OUT[2]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/Q} .lp_asserted_probability 0.48780
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/Q} .lp_asserted_toggle_rate 0.073015
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/QN} .orig_name {m_a/D_OUT[2]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/QN} .lp_asserted_probability 0.51220
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[2]/QN} .lp_asserted_toggle_rate 0.073015
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[3]} .orig_name {{m_a/D_OUT[3]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[3]} .single_bit_orig_name {m_a/D_OUT[3]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/D} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/D} .lp_asserted_toggle_rate 0.081440
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/Q} .orig_name {m_a/D_OUT[3]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/Q} .lp_asserted_probability 0.49980
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/Q} .lp_asserted_toggle_rate 0.081128
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/QN} .orig_name {m_a/D_OUT[3]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/QN} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[3]/QN} .lp_asserted_toggle_rate 0.081128
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[4]} .orig_name {{m_a/D_OUT[4]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[4]} .single_bit_orig_name {m_a/D_OUT[4]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/D} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/D} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/Q} .orig_name {m_a/D_OUT[4]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/Q} .lp_asserted_probability 0.50220
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/Q} .lp_asserted_toggle_rate 0.078320
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/QN} .orig_name {m_a/D_OUT[4]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/QN} .lp_asserted_probability 0.49780
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[4]/QN} .lp_asserted_toggle_rate 0.078320
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[5]} .orig_name {{m_a/D_OUT[5]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[5]} .single_bit_orig_name {m_a/D_OUT[5]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/D} .lp_asserted_probability 0.48580
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/D} .lp_asserted_toggle_rate 0.082376
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/Q} .orig_name {m_a/D_OUT[5]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/Q} .lp_asserted_probability 0.48480
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/Q} .lp_asserted_toggle_rate 0.082064
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/QN} .orig_name {m_a/D_OUT[5]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/QN} .lp_asserted_probability 0.51520
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[5]/QN} .lp_asserted_toggle_rate 0.082064
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[6]} .orig_name {{m_a/D_OUT[6]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[6]} .single_bit_orig_name {m_a/D_OUT[6]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/D} .lp_asserted_probability 0.49980
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/D} .lp_asserted_toggle_rate 0.075668
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/Q} .orig_name {m_a/D_OUT[6]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/Q} .lp_asserted_probability 0.49880
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/Q} .lp_asserted_toggle_rate 0.075668
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/QN} .orig_name {m_a/D_OUT[6]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/QN} .lp_asserted_probability 0.50120
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[6]/QN} .lp_asserted_toggle_rate 0.075668
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[12]} .orig_name {{m_a/D_OUT[12]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[12]} .single_bit_orig_name {m_a/D_OUT[12]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/D} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/D} .lp_asserted_toggle_rate 0.078788
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/Q} .orig_name {m_a/D_OUT[12]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/Q} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/Q} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/QN} .orig_name {m_a/D_OUT[12]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/QN} .lp_asserted_probability 0.51170
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[12]/QN} .lp_asserted_toggle_rate 0.078476
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[16]} .orig_name {{m_a/D_OUT[16]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[16]} .single_bit_orig_name {m_a/D_OUT[16]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/D} .lp_asserted_probability 0.47330
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/Q} .orig_name {m_a/D_OUT[16]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/Q} .lp_asserted_probability 0.47330
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/QN} .orig_name {m_a/D_OUT[16]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/QN} .lp_asserted_probability 0.52670
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[16]/QN} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[4]} .orig_name {{m_b/D_OUT[4]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[4]} .single_bit_orig_name {m_b/D_OUT[4]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/D} .lp_asserted_probability 0.50520
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/Q} .orig_name {m_b/D_OUT[4]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/Q} .lp_asserted_probability 0.50470
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/Q} .lp_asserted_toggle_rate 0.078788
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/QN} .orig_name {m_b/D_OUT[4]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/QN} .lp_asserted_probability 0.49530
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[4]/QN} .lp_asserted_toggle_rate 0.078788
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[5]} .orig_name {{m_b/D_OUT[5]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[5]} .single_bit_orig_name {m_b/D_OUT[5]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/D} .lp_asserted_probability 0.47430
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/D} .lp_asserted_toggle_rate 0.074420
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/Q} .orig_name {m_b/D_OUT[5]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/Q} .lp_asserted_probability 0.47380
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/Q} .lp_asserted_toggle_rate 0.074108
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/QN} .orig_name {m_b/D_OUT[5]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/QN} .lp_asserted_probability 0.52620
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[5]/QN} .lp_asserted_toggle_rate 0.074108
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[6]} .orig_name {{m_b/D_OUT[6]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[6]} .single_bit_orig_name {m_b/D_OUT[6]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/D} .lp_asserted_probability 0.50520
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/D} .lp_asserted_toggle_rate 0.077072
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/Q} .orig_name {m_b/D_OUT[6]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/Q} .lp_asserted_probability 0.50470
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/Q} .lp_asserted_toggle_rate 0.076916
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/QN} .orig_name {m_b/D_OUT[6]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/QN} .lp_asserted_probability 0.49530
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[6]/QN} .lp_asserted_toggle_rate 0.076916
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[7]} .orig_name {{m_b/D_OUT[7]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[7]} .single_bit_orig_name {m_b/D_OUT[7]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/D} .lp_asserted_probability 0.50070
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/D} .lp_asserted_toggle_rate 0.074264
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/Q} .orig_name {m_b/D_OUT[7]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/Q} .lp_asserted_probability 0.49980
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/Q} .lp_asserted_toggle_rate 0.074108
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/QN} .orig_name {m_b/D_OUT[7]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/QN} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[7]/QN} .lp_asserted_toggle_rate 0.074108
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[11]} .orig_name {{m_b/D_OUT[11]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[11]} .single_bit_orig_name {m_b/D_OUT[11]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/D} .lp_asserted_probability 0.52120
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/D} .lp_asserted_toggle_rate 0.075200
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/Q} .orig_name {m_b/D_OUT[11]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/Q} .lp_asserted_probability 0.52070
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/Q} .lp_asserted_toggle_rate 0.075044
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/QN} .orig_name {m_b/D_OUT[11]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/QN} .lp_asserted_probability 0.47930
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[11]/QN} .lp_asserted_toggle_rate 0.075044
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[12]} .orig_name {{m_b/D_OUT[12]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[12]} .single_bit_orig_name {m_b/D_OUT[12]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/D} .lp_asserted_probability 0.49680
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/D} .lp_asserted_toggle_rate 0.078008
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/Q} .orig_name {m_b/D_OUT[12]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/Q} .lp_asserted_probability 0.49580
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/Q} .lp_asserted_toggle_rate 0.077852
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/QN} .orig_name {m_b/D_OUT[12]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/QN} .lp_asserted_probability 0.50420
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[12]/QN} .lp_asserted_toggle_rate 0.077852
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[14]} .orig_name {{m_b/D_OUT[14]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[14]} .single_bit_orig_name {m_b/D_OUT[14]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/D} .lp_asserted_probability 0.51070
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/D} .lp_asserted_toggle_rate 0.076292
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/Q} .orig_name {m_b/D_OUT[14]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/Q} .lp_asserted_probability 0.50970
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/Q} .lp_asserted_toggle_rate 0.076136
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/QN} .orig_name {m_b/D_OUT[14]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/QN} .lp_asserted_probability 0.49030
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[14]/QN} .lp_asserted_toggle_rate 0.076136
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[15]} .orig_name {{m_b/D_OUT[15]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[15]} .single_bit_orig_name {m_b/D_OUT[15]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/D} .lp_asserted_probability 0.49830
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/D} .lp_asserted_toggle_rate 0.076760
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/Q} .orig_name {m_b/D_OUT[15]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/Q} .lp_asserted_probability 0.49830
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/Q} .lp_asserted_toggle_rate 0.076604
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/QN} .orig_name {m_b/D_OUT[15]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/QN} .lp_asserted_probability 0.50170
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[15]/QN} .lp_asserted_toggle_rate 0.076604
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[16]} .orig_name {{m_b/D_OUT[16]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[16]} .single_bit_orig_name {m_b/D_OUT[16]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/D} .lp_asserted_probability 0.48680
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/D} .lp_asserted_toggle_rate 0.077852
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/Q} .orig_name {m_b/D_OUT[16]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/Q} .lp_asserted_probability 0.48580
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/Q} .lp_asserted_toggle_rate 0.077852
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/QN} .orig_name {m_b/D_OUT[16]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/QN} .lp_asserted_probability 0.51420
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[16]/QN} .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g5408__7654/A1 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g5408__7654/A1 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g5408__7654/A2 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g5408__7654/A2 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkCompareRNS/g12646__9719/B1 .lp_asserted_probability 0.51220
set_db -quiet pin:mkCompareRNS/g12646__9719/B1 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12650__2001/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g12650__2001/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12652__2005/B1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g12652__2005/B1 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12658__7557/B1 .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g12658__7557/B1 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g12661__1377/B1 .lp_asserted_probability 0.48780
set_db -quiet pin:mkCompareRNS/g12661__1377/B1 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g12662__3717/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g12662__3717/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12662__3717/B1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkCompareRNS/g12662__3717/B1 .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g12663__4599/A1 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g12663__4599/A1 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g12663__4599/B1 .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g12663__4599/B1 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g12664__3779/A1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g12664__3779/A1 .lp_asserted_toggle_rate 0.076292
set_db -quiet pin:mkCompareRNS/g12664__3779/B1 .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g12664__3779/B1 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g12665__2007/A1 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g12665__2007/A1 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g12665__2007/B1 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g12665__2007/B1 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkCompareRNS/g12666__1237/A1 .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g12666__1237/A1 .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g12666__1237/B1 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12666__1237/B1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g12699__1297/A1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12699__1297/A1 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g12699__1297/B1 .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g12699__1297/B1 .lp_asserted_toggle_rate 0.076136
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[17]} .orig_name {{m_a/D_OUT[17]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[17]} .single_bit_orig_name {m_a/D_OUT[17]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[17]/D} .lp_asserted_probability 0.49030
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[17]/D} .lp_asserted_toggle_rate 0.078788
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[17]/Q} .orig_name {m_a/D_OUT[17]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[17]/Q} .lp_asserted_probability 0.49030
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[17]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[18]} .orig_name {{m_a/D_OUT[18]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[18]} .single_bit_orig_name {m_a/D_OUT[18]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[18]/D} .lp_asserted_probability 0.51370
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[18]/D} .lp_asserted_toggle_rate 0.079256
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[18]/Q} .orig_name {m_a/D_OUT[18]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[18]/Q} .lp_asserted_probability 0.51270
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[18]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[19]} .orig_name {{m_a/D_OUT[19]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[19]} .single_bit_orig_name {m_a/D_OUT[19]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[19]/D} .lp_asserted_probability 0.51320
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[19]/D} .lp_asserted_toggle_rate 0.080816
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[19]/Q} .orig_name {m_a/D_OUT[19]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[19]/Q} .lp_asserted_probability 0.51270
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[19]/Q} .lp_asserted_toggle_rate 0.080504
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[20]} .orig_name {{m_a/D_OUT[20]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[20]} .single_bit_orig_name {m_a/D_OUT[20]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[20]/D} .lp_asserted_probability 0.49980
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[20]/D} .lp_asserted_toggle_rate 0.075824
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[20]/Q} .orig_name {m_a/D_OUT[20]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[20]/Q} .lp_asserted_probability 0.49930
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[20]/Q} .lp_asserted_toggle_rate 0.075512
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[21]} .orig_name {{m_a/D_OUT[21]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[21]} .single_bit_orig_name {m_a/D_OUT[21]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[21]/D} .lp_asserted_probability 0.50120
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[21]/D} .lp_asserted_toggle_rate 0.077384
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[21]/Q} .orig_name {m_a/D_OUT[21]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[21]/Q} .lp_asserted_probability 0.50070
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[21]/Q} .lp_asserted_toggle_rate 0.077228
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[22]} .orig_name {{m_a/D_OUT[22]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[22]} .single_bit_orig_name {m_a/D_OUT[22]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[22]/D} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[22]/D} .lp_asserted_toggle_rate 0.076292
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[22]/Q} .orig_name {m_a/D_OUT[22]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[22]/Q} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[22]/Q} .lp_asserted_toggle_rate 0.075980
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[23]} .orig_name {{m_a/D_OUT[23]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[23]} .single_bit_orig_name {m_a/D_OUT[23]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[23]/D} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[23]/D} .lp_asserted_toggle_rate 0.077072
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[23]/Q} .orig_name {m_a/D_OUT[23]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[23]/Q} .lp_asserted_probability 0.50570
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[23]/Q} .lp_asserted_toggle_rate 0.076760
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[24]} .orig_name {{m_a/D_OUT[24]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[24]} .single_bit_orig_name {m_a/D_OUT[24]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[24]/D} .lp_asserted_probability 0.00700
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[24]/D} .lp_asserted_toggle_rate 0.002184
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[24]/Q} .orig_name {m_a/D_OUT[24]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[24]/Q} .lp_asserted_probability 0.00700
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[24]/Q} .lp_asserted_toggle_rate 0.002184
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[25]} .orig_name {{m_a/D_OUT[25]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[25]} .single_bit_orig_name {m_a/D_OUT[25]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[25]/D} .lp_asserted_probability 0.49330
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[25]/D} .lp_asserted_toggle_rate 0.080192
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[25]/Q} .orig_name {m_a/D_OUT[25]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[25]/Q} .lp_asserted_probability 0.49280
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[25]/Q} .lp_asserted_toggle_rate 0.079880
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[26]} .orig_name {{m_a/D_OUT[26]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[26]} .single_bit_orig_name {m_a/D_OUT[26]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[26]/D} .lp_asserted_probability 0.48080
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[26]/D} .lp_asserted_toggle_rate 0.076292
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[26]/Q} .orig_name {m_a/D_OUT[26]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[26]/Q} .lp_asserted_probability 0.48030
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[26]/Q} .lp_asserted_toggle_rate 0.075980
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[27]} .orig_name {{m_a/D_OUT[27]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[27]} .single_bit_orig_name {m_a/D_OUT[27]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[27]/D} .lp_asserted_probability 0.51070
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[27]/D} .lp_asserted_toggle_rate 0.083469
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[27]/Q} .orig_name {m_a/D_OUT[27]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[27]/Q} .lp_asserted_probability 0.51020
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[27]/Q} .lp_asserted_toggle_rate 0.083157
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[28]} .orig_name {{m_a/D_OUT[28]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[28]} .single_bit_orig_name {m_a/D_OUT[28]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[28]/D} .lp_asserted_probability 0.44830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[28]/D} .lp_asserted_toggle_rate 0.077696
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[28]/Q} .orig_name {m_a/D_OUT[28]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[28]/Q} .lp_asserted_probability 0.44830
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[28]/Q} .lp_asserted_toggle_rate 0.077696
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[29]} .orig_name {{m_a/D_OUT[29]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[29]} .single_bit_orig_name {m_a/D_OUT[29]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[29]/D} .lp_asserted_probability 0.48580
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[29]/D} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[29]/Q} .orig_name {m_a/D_OUT[29]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[29]/Q} .lp_asserted_probability 0.48480
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[29]/Q} .lp_asserted_toggle_rate 0.078476
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[30]} .orig_name {{m_a/D_OUT[30]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[30]} .single_bit_orig_name {m_a/D_OUT[30]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[30]/D} .lp_asserted_probability 0.51170
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[30]/D} .lp_asserted_toggle_rate 0.079100
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[30]/Q} .orig_name {m_a/D_OUT[30]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[30]/Q} .lp_asserted_probability 0.51120
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[30]/Q} .lp_asserted_toggle_rate 0.078788
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[31]} .orig_name {{m_a/D_OUT[31]}}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[31]} .single_bit_orig_name {m_a/D_OUT[31]}
set_db -quiet {inst:mkCompareRNS/m_a_D_OUT_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[31]/D} .lp_asserted_probability 0.50970
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[31]/D} .lp_asserted_toggle_rate 0.079100
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[31]/Q} .orig_name {m_a/D_OUT[31]}
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[31]/Q} .lp_asserted_probability 0.50870
set_db -quiet {pin:mkCompareRNS/m_a_D_OUT_reg[31]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g4388__2005/A2 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g4388__2005/A2 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g4388__2005/B2 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g4388__2005/B2 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g4391__1279/B .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g4391__1279/B .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g4392__6179/B .lp_asserted_probability 0.50070
set_db -quiet pin:mkCompareRNS/g4392__6179/B .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g4393__7837/A .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g4393__7837/A .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g4394__7557/A .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g4394__7557/A .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g4395__7654/A .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g4395__7654/A .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g4396__8867/A .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g4396__8867/A .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g4418__1122/A .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g4418__1122/A .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g4422__1279/A .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g4422__1279/A .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g4425__7557/A .lp_asserted_probability 0.44830
set_db -quiet pin:mkCompareRNS/g4425__7557/A .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g4428__1377/A .lp_asserted_probability 0.51020
set_db -quiet pin:mkCompareRNS/g4428__1377/A .lp_asserted_toggle_rate 0.083157
set_db -quiet pin:mkCompareRNS/g4431__4599/A .lp_asserted_probability 0.48030
set_db -quiet pin:mkCompareRNS/g4431__4599/A .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g4433__3779/A2 .lp_asserted_probability 0.49280
set_db -quiet pin:mkCompareRNS/g4433__3779/A2 .lp_asserted_toggle_rate 0.079880
set_db -quiet pin:mkCompareRNS/g4435__1237/A2 .lp_asserted_probability 0.49280
set_db -quiet pin:mkCompareRNS/g4435__1237/A2 .lp_asserted_toggle_rate 0.079880
set_db -quiet pin:mkCompareRNS/g4436__1297/A1 .lp_asserted_probability 0.50870
set_db -quiet pin:mkCompareRNS/g4436__1297/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g4437__2006/A1 .lp_asserted_probability 0.50870
set_db -quiet pin:mkCompareRNS/g4437__2006/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g4437__2006/B1 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g4437__2006/B1 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g4438__2833/A1 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g4438__2833/A1 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g4438__2833/A2 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g4438__2833/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g4439/I .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g4439/I .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g4440/I .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g4440/I .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g4441/I .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g4441/I .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g4442/I .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g4442/I .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g4450/I .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g4450/I .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g4451/I .lp_asserted_probability 0.50070
set_db -quiet pin:mkCompareRNS/g4451/I .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g8948/A1 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g8948/A1 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g8967/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g8967/A2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g8971/B .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g8971/B .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g8977/B1 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g8977/B1 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g8978/B1 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g8978/B1 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g8979/A .lp_asserted_probability 0.50070
set_db -quiet pin:mkCompareRNS/g8979/A .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g8980/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g8980/A2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g8983/A2 .lp_asserted_probability 0.01000
set_db -quiet pin:mkCompareRNS/g8983/A2 .lp_asserted_toggle_rate 0.003120
set_db -quiet pin:mkCompareRNS/g8984/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g8984/A2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g8991/A2 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g8991/A2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g8995/A2 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g8995/A2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g8998/A2 .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g8998/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g8998/B2 .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g8998/B2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g9002/A2 .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g9002/A2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g9002/B2 .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g9002/B2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g9007/A1 .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g9007/A1 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g9013/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g9013/A2 .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g9013/B2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g9013/B2 .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g9014/A2 .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g9014/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g9016/A2 .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g9016/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g9017/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g9017/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g9018/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g9018/A2 .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g9022/A .lp_asserted_probability 0.48030
set_db -quiet pin:mkCompareRNS/g9022/A .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g9027/A1 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g9027/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g9029/A2 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g9029/A2 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g9033/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g9033/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g9035/A1 .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g9035/A1 .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g9038/A .lp_asserted_probability 0.51020
set_db -quiet pin:mkCompareRNS/g9038/A .lp_asserted_toggle_rate 0.083157
set_db -quiet pin:mkCompareRNS/g9039/A .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g9039/A .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9040/A .lp_asserted_probability 0.44830
set_db -quiet pin:mkCompareRNS/g9040/A .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g9041/A .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g9041/A .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g9042/A2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkCompareRNS/g9042/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g9043/A2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkCompareRNS/g9043/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g9046/A2 .lp_asserted_probability 0.50870
set_db -quiet pin:mkCompareRNS/g9046/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g9048/A1 .lp_asserted_probability 0.49280
set_db -quiet pin:mkCompareRNS/g9048/A1 .lp_asserted_toggle_rate 0.079880
set_db -quiet pin:mkCompareRNS/g9048/A2 .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g9048/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9049/A1 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g9049/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9049/A2 .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g9049/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9051/A1 .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g9051/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9051/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g9051/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g9052/A1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkCompareRNS/g9052/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g9052/B1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkCompareRNS/g9052/B1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g9053/A1 .lp_asserted_probability 0.50870
set_db -quiet pin:mkCompareRNS/g9053/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g9054/A1 .lp_asserted_probability 0.51870
set_db -quiet pin:mkCompareRNS/g9054/A1 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g9054/A2 .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g9054/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9055/A1 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g9055/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9055/A2 .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g9055/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9056/A1 .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g9056/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9056/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g9056/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g9057/A1 .lp_asserted_probability 0.49280
set_db -quiet pin:mkCompareRNS/g9057/A1 .lp_asserted_toggle_rate 0.079880
set_db -quiet pin:mkCompareRNS/g9057/B1 .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g9057/B1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9060/I .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g9060/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g9061/I .lp_asserted_probability 0.52120
set_db -quiet pin:mkCompareRNS/g9061/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g9063/I .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g9063/I .lp_asserted_toggle_rate 0.073484
set_db -quiet pin:mkCompareRNS/g9064/I .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g9064/I .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g9065/I .lp_asserted_probability 0.49380
set_db -quiet pin:mkCompareRNS/g9065/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g9066/I .lp_asserted_probability 0.48430
set_db -quiet pin:mkCompareRNS/g9066/I .lp_asserted_toggle_rate 0.078164
set_db -quiet pin:mkCompareRNS/g9097/A1 .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g9097/A1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g9097/B1 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g9097/B1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9098/A1 .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g9098/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g9098/A2 .lp_asserted_probability 0.51870
set_db -quiet pin:mkCompareRNS/g9098/A2 .lp_asserted_toggle_rate 0.077696
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[0]} .orig_name {{m_c/D_OUT[0]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[0]} .single_bit_orig_name {m_c/D_OUT[0]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[0]/Q} .orig_name {m_c/D_OUT[0]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[0]/Q} .lp_asserted_probability 0.48580
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[0]/Q} .lp_asserted_toggle_rate 0.077540
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[1]} .orig_name {{m_c/D_OUT[1]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[1]} .single_bit_orig_name {m_c/D_OUT[1]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[1]/Q} .orig_name {m_c/D_OUT[1]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[1]/Q} .lp_asserted_probability 0.48030
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[1]/Q} .lp_asserted_toggle_rate 0.074420
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[2]} .orig_name {{m_c/D_OUT[2]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[2]} .single_bit_orig_name {m_c/D_OUT[2]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[2]/Q} .orig_name {m_c/D_OUT[2]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[2]/Q} .lp_asserted_probability 0.48380
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[2]/Q} .lp_asserted_toggle_rate 0.080660
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[3]} .orig_name {{m_c/D_OUT[3]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[3]} .single_bit_orig_name {m_c/D_OUT[3]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[3]/Q} .orig_name {m_c/D_OUT[3]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[3]/Q} .lp_asserted_probability 0.49330
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[3]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[4]} .orig_name {{m_c/D_OUT[4]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[4]} .single_bit_orig_name {m_c/D_OUT[4]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[4]/Q} .orig_name {m_c/D_OUT[4]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[4]/Q} .lp_asserted_probability 0.48030
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[4]/Q} .lp_asserted_toggle_rate 0.080504
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[5]} .orig_name {{m_c/D_OUT[5]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[5]} .single_bit_orig_name {m_c/D_OUT[5]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[5]/Q} .orig_name {m_c/D_OUT[5]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[5]/Q} .lp_asserted_probability 0.46780
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[5]/Q} .lp_asserted_toggle_rate 0.080036
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[6]} .orig_name {{m_c/D_OUT[6]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[6]} .single_bit_orig_name {m_c/D_OUT[6]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[6]/Q} .orig_name {m_c/D_OUT[6]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[6]/Q} .lp_asserted_probability 0.51320
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[6]/Q} .lp_asserted_toggle_rate 0.080504
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[7]} .orig_name {{m_c/D_OUT[7]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[7]} .single_bit_orig_name {m_c/D_OUT[7]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[7]/Q} .orig_name {m_c/D_OUT[7]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[7]/Q} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[7]/Q} .lp_asserted_toggle_rate 0.077384
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[8]} .orig_name {{m_c/D_OUT[8]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[8]} .single_bit_orig_name {m_c/D_OUT[8]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[8]/Q} .orig_name {m_c/D_OUT[8]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[8]/Q} .lp_asserted_probability 0.00800
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[8]/Q} .lp_asserted_toggle_rate 0.002496
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[9]} .orig_name {{m_c/D_OUT[9]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[9]} .single_bit_orig_name {m_c/D_OUT[9]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[9]/Q} .orig_name {m_c/D_OUT[9]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[9]/Q} .lp_asserted_probability 0.49730
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[9]/Q} .lp_asserted_toggle_rate 0.077384
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[10]} .orig_name {{m_c/D_OUT[10]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[10]} .single_bit_orig_name {m_c/D_OUT[10]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[10]/Q} .orig_name {m_c/D_OUT[10]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[10]/Q} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[10]/Q} .lp_asserted_toggle_rate 0.079568
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[11]} .orig_name {{m_c/D_OUT[11]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[11]} .single_bit_orig_name {m_c/D_OUT[11]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[11]/Q} .orig_name {m_c/D_OUT[11]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[11]/Q} .lp_asserted_probability 0.51170
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[11]/Q} .lp_asserted_toggle_rate 0.079100
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[12]} .orig_name {{m_c/D_OUT[12]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[12]} .single_bit_orig_name {m_c/D_OUT[12]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[12]/Q} .orig_name {m_c/D_OUT[12]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[12]/Q} .lp_asserted_probability 0.48230
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[12]/Q} .lp_asserted_toggle_rate 0.074576
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[13]} .orig_name {{m_c/D_OUT[13]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[13]} .single_bit_orig_name {m_c/D_OUT[13]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[13]/Q} .orig_name {m_c/D_OUT[13]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[13]/Q} .lp_asserted_probability 0.50770
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[13]/Q} .lp_asserted_toggle_rate 0.079256
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[14]} .orig_name {{m_c/D_OUT[14]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[14]} .single_bit_orig_name {m_c/D_OUT[14]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[14]/Q} .orig_name {m_c/D_OUT[14]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[14]/Q} .lp_asserted_probability 0.47780
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[14]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[15]} .orig_name {{m_c/D_OUT[15]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[15]} .single_bit_orig_name {m_c/D_OUT[15]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[15]/Q} .orig_name {m_c/D_OUT[15]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[15]/Q} .lp_asserted_probability 0.51070
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[15]/Q} .lp_asserted_toggle_rate 0.074576
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[16]} .orig_name {{m_c/D_OUT[16]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[16]} .single_bit_orig_name {m_c/D_OUT[16]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[16]/Q} .orig_name {m_c/D_OUT[16]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[16]/Q} .lp_asserted_probability 0.48930
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[16]/Q} .lp_asserted_toggle_rate 0.077384
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[17]} .orig_name {{m_c/D_OUT[17]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[17]} .single_bit_orig_name {m_c/D_OUT[17]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[17]/Q} .orig_name {m_c/D_OUT[17]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[17]/Q} .lp_asserted_probability 0.46730
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[17]/Q} .lp_asserted_toggle_rate 0.077540
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[18]} .orig_name {{m_c/D_OUT[18]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[18]} .single_bit_orig_name {m_c/D_OUT[18]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[18]/Q} .orig_name {m_c/D_OUT[18]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[18]/Q} .lp_asserted_probability 0.51320
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[18]/Q} .lp_asserted_toggle_rate 0.077852
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[19]} .orig_name {{m_c/D_OUT[19]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[19]} .single_bit_orig_name {m_c/D_OUT[19]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[19]/Q} .orig_name {m_c/D_OUT[19]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[19]/Q} .lp_asserted_probability 0.52420
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[19]/Q} .lp_asserted_toggle_rate 0.080660
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[20]} .orig_name {{m_c/D_OUT[20]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[20]} .single_bit_orig_name {m_c/D_OUT[20]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[20]/Q} .orig_name {m_c/D_OUT[20]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[20]/Q} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[20]/Q} .lp_asserted_toggle_rate 0.081596
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[21]} .orig_name {{m_c/D_OUT[21]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[21]} .single_bit_orig_name {m_c/D_OUT[21]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[21]/Q} .orig_name {m_c/D_OUT[21]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[21]/Q} .lp_asserted_probability 0.49280
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[21]/Q} .lp_asserted_toggle_rate 0.082376
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[22]} .orig_name {{m_c/D_OUT[22]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[22]} .single_bit_orig_name {m_c/D_OUT[22]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[22]/Q} .orig_name {m_c/D_OUT[22]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[22]/Q} .lp_asserted_probability 0.48530
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[22]/Q} .lp_asserted_toggle_rate 0.073171
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[23]} .orig_name {{m_c/D_OUT[23]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[23]} .single_bit_orig_name {m_c/D_OUT[23]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[23]/Q} .orig_name {m_c/D_OUT[23]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[23]/Q} .lp_asserted_probability 0.49580
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[23]/Q} .lp_asserted_toggle_rate 0.076448
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[24]} .orig_name {{m_c/D_OUT[24]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[24]} .single_bit_orig_name {m_c/D_OUT[24]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[24]/Q} .orig_name {m_c/D_OUT[24]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[24]/Q} .lp_asserted_probability 0.00800
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[24]/Q} .lp_asserted_toggle_rate 0.002496
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[25]} .orig_name {{m_c/D_OUT[25]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[25]} .single_bit_orig_name {m_c/D_OUT[25]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[25]/Q} .orig_name {m_c/D_OUT[25]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[25]/Q} .lp_asserted_probability 0.49630
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[25]/Q} .lp_asserted_toggle_rate 0.077852
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[26]} .orig_name {{m_c/D_OUT[26]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[26]} .single_bit_orig_name {m_c/D_OUT[26]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[26]/Q} .orig_name {m_c/D_OUT[26]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[26]/Q} .lp_asserted_probability 0.49630
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[26]/Q} .lp_asserted_toggle_rate 0.075044
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[27]} .orig_name {{m_c/D_OUT[27]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[27]} .single_bit_orig_name {m_c/D_OUT[27]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[27]/Q} .orig_name {m_c/D_OUT[27]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[27]/Q} .lp_asserted_probability 0.51970
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[27]/Q} .lp_asserted_toggle_rate 0.078164
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[28]} .orig_name {{m_c/D_OUT[28]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[28]} .single_bit_orig_name {m_c/D_OUT[28]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[28]/Q} .orig_name {m_c/D_OUT[28]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[28]/Q} .lp_asserted_probability 0.48330
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[28]/Q} .lp_asserted_toggle_rate 0.076448
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[29]} .orig_name {{m_c/D_OUT[29]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[29]} .single_bit_orig_name {m_c/D_OUT[29]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[29]/Q} .orig_name {m_c/D_OUT[29]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[29]/Q} .lp_asserted_probability 0.46730
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[29]/Q} .lp_asserted_toggle_rate 0.076292
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[30]} .orig_name {{m_c/D_OUT[30]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[30]} .single_bit_orig_name {m_c/D_OUT[30]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[30]/Q} .orig_name {m_c/D_OUT[30]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[30]/Q} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[30]/Q} .lp_asserted_toggle_rate 0.080972
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[31]} .orig_name {{m_c/D_OUT[31]}}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[31]} .single_bit_orig_name {m_c/D_OUT[31]}
set_db -quiet {inst:mkCompareRNS/m_c_D_OUT_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[31]/Q} .orig_name {m_c/D_OUT[31]}
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[31]/Q} .lp_asserted_probability 0.52120
set_db -quiet {pin:mkCompareRNS/m_c_D_OUT_reg[31]/Q} .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g3783/A2 .lp_asserted_probability 0.50070
set_db -quiet pin:mkCompareRNS/g3783/A2 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g3784/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g3784/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g3785/A2 .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g3785/A2 .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g3786/A2 .lp_asserted_probability 0.47230
set_db -quiet pin:mkCompareRNS/g3786/A2 .lp_asserted_toggle_rate 0.073796
set_db -quiet pin:mkCompareRNS/g3787/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g3787/A2 .lp_asserted_toggle_rate 0.077228
set_db -quiet pin:mkCompareRNS/g3788/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g3788/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g3789/A2 .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g3789/A2 .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g3790/A2 .lp_asserted_probability 0.53120
set_db -quiet pin:mkCompareRNS/g3790/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkCompareRNS/g3791/A2 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g3791/A2 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g3792/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkCompareRNS/g3792/A2 .lp_asserted_toggle_rate 0.076292
set_db -quiet pin:mkCompareRNS/g3793/A2 .lp_asserted_probability 0.47330
set_db -quiet pin:mkCompareRNS/g3793/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g3794/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g3794/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkCompareRNS/g3795/A2 .lp_asserted_probability 0.49030
set_db -quiet pin:mkCompareRNS/g3795/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g3796/A2 .lp_asserted_probability 0.51270
set_db -quiet pin:mkCompareRNS/g3796/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g3797/A2 .lp_asserted_probability 0.49930
set_db -quiet pin:mkCompareRNS/g3797/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkCompareRNS/g3798/A2 .lp_asserted_probability 0.50870
set_db -quiet pin:mkCompareRNS/g3798/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g3799/A2 .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g3799/A2 .lp_asserted_toggle_rate 0.075668
set_db -quiet pin:mkCompareRNS/g3800/A2 .lp_asserted_probability 0.49280
set_db -quiet pin:mkCompareRNS/g3800/A2 .lp_asserted_toggle_rate 0.079880
set_db -quiet pin:mkCompareRNS/g3801/A2 .lp_asserted_probability 0.51020
set_db -quiet pin:mkCompareRNS/g3801/A2 .lp_asserted_toggle_rate 0.083157
set_db -quiet pin:mkCompareRNS/g3802/A2 .lp_asserted_probability 0.44830
set_db -quiet pin:mkCompareRNS/g3802/A2 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g3803/A2 .lp_asserted_probability 0.48030
set_db -quiet pin:mkCompareRNS/g3803/A2 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g3804/A2 .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g3804/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g3805/A2 .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g3805/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g3806/A2 .lp_asserted_probability 0.48130
set_db -quiet pin:mkCompareRNS/g3806/A2 .lp_asserted_toggle_rate 0.073640
set_db -quiet pin:mkCompareRNS/g3807/A2 .lp_asserted_probability 0.48780
set_db -quiet pin:mkCompareRNS/g3807/A2 .lp_asserted_toggle_rate 0.073015
set_db -quiet pin:mkCompareRNS/g3808/A2 .lp_asserted_probability 0.50570
set_db -quiet pin:mkCompareRNS/g3808/A2 .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g3809/A2 .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g3809/A2 .lp_asserted_toggle_rate 0.081128
set_db -quiet pin:mkCompareRNS/g3810/A2 .lp_asserted_probability 0.50920
set_db -quiet pin:mkCompareRNS/g3810/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkCompareRNS/g3811/A2 .lp_asserted_probability 0.50220
set_db -quiet pin:mkCompareRNS/g3811/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkCompareRNS/g3812/A2 .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g3812/A2 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkCompareRNS/g3813/A2 .lp_asserted_probability 0.48480
set_db -quiet pin:mkCompareRNS/g3813/A2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkCompareRNS/g3814/A2 .lp_asserted_probability 0.00700
set_db -quiet pin:mkCompareRNS/g3814/A2 .lp_asserted_toggle_rate 0.002184
set_db -quiet pin:mkCompareRNS/g3819/I .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g3819/I .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g3820/I .lp_asserted_probability 0.50820
set_db -quiet pin:mkCompareRNS/g3820/I .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g3821/I .lp_asserted_probability 0.49980
set_db -quiet pin:mkCompareRNS/g3821/I .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g3822/I .lp_asserted_probability 0.48580
set_db -quiet pin:mkCompareRNS/g3822/I .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g3823/I .lp_asserted_probability 0.49380
set_db -quiet pin:mkCompareRNS/g3823/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g3824/I .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g3824/I .lp_asserted_toggle_rate 0.073484
set_db -quiet pin:mkCompareRNS/g3825/I .lp_asserted_probability 0.49080
set_db -quiet pin:mkCompareRNS/g3825/I .lp_asserted_toggle_rate 0.079100
set_db -quiet pin:mkCompareRNS/g3826/I .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g3826/I .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g3827/I .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g3827/I .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g3828/I .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g3828/I .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g3829/I .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g3829/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g3830/I .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g3830/I .lp_asserted_toggle_rate 0.076760
set_db -quiet pin:mkCompareRNS/g3831/I .lp_asserted_probability 0.47380
set_db -quiet pin:mkCompareRNS/g3831/I .lp_asserted_toggle_rate 0.074108
set_db -quiet pin:mkCompareRNS/g3832/I .lp_asserted_probability 0.52120
set_db -quiet pin:mkCompareRNS/g3832/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g3833/I .lp_asserted_probability 0.50970
set_db -quiet pin:mkCompareRNS/g3833/I .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g3834/I .lp_asserted_probability 0.49130
set_db -quiet pin:mkCompareRNS/g3834/I .lp_asserted_toggle_rate 0.081596
set_db -quiet pin:mkCompareRNS/g3835/I .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g3835/I .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkCompareRNS/g3836/I .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g3836/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g3837/I .lp_asserted_probability 0.00500
set_db -quiet pin:mkCompareRNS/g3837/I .lp_asserted_toggle_rate 0.001560
set_db -quiet pin:mkCompareRNS/g3838/I .lp_asserted_probability 0.51520
set_db -quiet pin:mkCompareRNS/g3838/I .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkCompareRNS/g3839/I .lp_asserted_probability 0.52070
set_db -quiet pin:mkCompareRNS/g3839/I .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g3840/I .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g3840/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g3841/I .lp_asserted_probability 0.01000
set_db -quiet pin:mkCompareRNS/g3841/I .lp_asserted_toggle_rate 0.003120
set_db -quiet pin:mkCompareRNS/g3842/I .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g3842/I .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g3843/I .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g3843/I .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g3844/I .lp_asserted_probability 0.50470
set_db -quiet pin:mkCompareRNS/g3844/I .lp_asserted_toggle_rate 0.078788
set_db -quiet pin:mkCompareRNS/g3845/I .lp_asserted_probability 0.49580
set_db -quiet pin:mkCompareRNS/g3845/I .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkCompareRNS/g3846/I .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g3846/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g3847/I .lp_asserted_probability 0.48430
set_db -quiet pin:mkCompareRNS/g3847/I .lp_asserted_toggle_rate 0.078164
set_db -quiet pin:mkCompareRNS/g3848/I .lp_asserted_probability 0.49830
set_db -quiet pin:mkCompareRNS/g3848/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g3849/I .lp_asserted_probability 0.51870
set_db -quiet pin:mkCompareRNS/g3849/I .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g3850/I .lp_asserted_probability 0.51120
set_db -quiet pin:mkCompareRNS/g3850/I .lp_asserted_toggle_rate 0.076136
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[17]} .orig_name {{m_b/D_OUT[17]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[17]} .single_bit_orig_name {m_b/D_OUT[17]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[17]/D} .lp_asserted_probability 0.46780
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[17]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[17]/Q} .orig_name {m_b/D_OUT[17]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[17]/Q} .lp_asserted_probability 0.46730
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[17]/Q} .lp_asserted_toggle_rate 0.078476
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[18]} .orig_name {{m_b/D_OUT[18]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[18]} .single_bit_orig_name {m_b/D_OUT[18]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[18]/D} .lp_asserted_probability 0.53170
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[18]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[18]/Q} .orig_name {m_b/D_OUT[18]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[18]/Q} .lp_asserted_probability 0.53070
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[18]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[19]} .orig_name {{m_b/D_OUT[19]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[19]} .single_bit_orig_name {m_b/D_OUT[19]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[19]/D} .lp_asserted_probability 0.51920
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[19]/D} .lp_asserted_toggle_rate 0.078008
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[19]/Q} .orig_name {m_b/D_OUT[19]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[19]/Q} .lp_asserted_probability 0.51870
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[19]/Q} .lp_asserted_toggle_rate 0.077696
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[20]} .orig_name {{m_b/D_OUT[20]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[20]} .single_bit_orig_name {m_b/D_OUT[20]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[20]/D} .lp_asserted_probability 0.49280
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[20]/D} .lp_asserted_toggle_rate 0.083000
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[20]/Q} .orig_name {m_b/D_OUT[20]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[20]/Q} .lp_asserted_probability 0.49180
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[20]/Q} .lp_asserted_toggle_rate 0.082688
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[21]} .orig_name {{m_b/D_OUT[21]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[21]} .single_bit_orig_name {m_b/D_OUT[21]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[21]/D} .lp_asserted_probability 0.50370
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[21]/D} .lp_asserted_toggle_rate 0.076292
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[21]/Q} .orig_name {m_b/D_OUT[21]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[21]/Q} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[21]/Q} .lp_asserted_toggle_rate 0.076136
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[22]} .orig_name {{m_b/D_OUT[22]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[22]} .single_bit_orig_name {m_b/D_OUT[22]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[22]/D} .lp_asserted_probability 0.49280
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[22]/D} .lp_asserted_toggle_rate 0.077072
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[22]/Q} .orig_name {m_b/D_OUT[22]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[22]/Q} .lp_asserted_probability 0.49230
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[22]/Q} .lp_asserted_toggle_rate 0.076604
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[23]} .orig_name {{m_b/D_OUT[23]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[23]} .single_bit_orig_name {m_b/D_OUT[23]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[23]/D} .lp_asserted_probability 0.50170
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[23]/D} .lp_asserted_toggle_rate 0.076916
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[23]/Q} .orig_name {m_b/D_OUT[23]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[23]/Q} .lp_asserted_probability 0.50120
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[23]/Q} .lp_asserted_toggle_rate 0.076604
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[24]} .orig_name {{m_b/D_OUT[24]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[24]} .single_bit_orig_name {m_b/D_OUT[24]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[24]/D} .lp_asserted_probability 0.01000
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[24]/D} .lp_asserted_toggle_rate 0.003120
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[24]/Q} .orig_name {m_b/D_OUT[24]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[24]/Q} .lp_asserted_probability 0.01000
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[24]/Q} .lp_asserted_toggle_rate 0.003120
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[25]} .orig_name {{m_b/D_OUT[25]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[25]} .single_bit_orig_name {m_b/D_OUT[25]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[25]/D} .lp_asserted_probability 0.50470
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[25]/D} .lp_asserted_toggle_rate 0.078788
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[25]/Q} .orig_name {m_b/D_OUT[25]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[25]/Q} .lp_asserted_probability 0.50420
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[25]/Q} .lp_asserted_toggle_rate 0.078476
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[26]} .orig_name {{m_b/D_OUT[26]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[26]} .single_bit_orig_name {m_b/D_OUT[26]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[26]/D} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[26]/D} .lp_asserted_toggle_rate 0.075200
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[26]/Q} .orig_name {m_b/D_OUT[26]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[26]/Q} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[26]/Q} .lp_asserted_toggle_rate 0.075044
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[27]} .orig_name {{m_b/D_OUT[27]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[27]} .single_bit_orig_name {m_b/D_OUT[27]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[27]/D} .lp_asserted_probability 0.49930
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[27]/D} .lp_asserted_toggle_rate 0.073640
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[27]/Q} .orig_name {m_b/D_OUT[27]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[27]/Q} .lp_asserted_probability 0.49880
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[27]/Q} .lp_asserted_toggle_rate 0.073484
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[28]} .orig_name {{m_b/D_OUT[28]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[28]} .single_bit_orig_name {m_b/D_OUT[28]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[28]/D} .lp_asserted_probability 0.49430
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[28]/D} .lp_asserted_toggle_rate 0.076760
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[28]/Q} .orig_name {m_b/D_OUT[28]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[28]/Q} .lp_asserted_probability 0.49380
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[28]/Q} .lp_asserted_toggle_rate 0.076604
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[29]} .orig_name {{m_b/D_OUT[29]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[29]} .single_bit_orig_name {m_b/D_OUT[29]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[29]/D} .lp_asserted_probability 0.48480
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[29]/D} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[29]/Q} .orig_name {m_b/D_OUT[29]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[29]/Q} .lp_asserted_probability 0.48430
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[29]/Q} .lp_asserted_toggle_rate 0.078164
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[30]} .orig_name {{m_b/D_OUT[30]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[30]} .single_bit_orig_name {m_b/D_OUT[30]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[30]/D} .lp_asserted_probability 0.47880
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[30]/D} .lp_asserted_toggle_rate 0.077228
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[30]/Q} .orig_name {m_b/D_OUT[30]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[30]/Q} .lp_asserted_probability 0.47830
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[30]/Q} .lp_asserted_toggle_rate 0.076916
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[31]} .orig_name {{m_b/D_OUT[31]}}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[31]} .single_bit_orig_name {m_b/D_OUT[31]}
set_db -quiet {inst:mkCompareRNS/m_b_D_OUT_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[31]/D} .lp_asserted_probability 0.52170
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[31]/D} .lp_asserted_toggle_rate 0.077228
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[31]/Q} .orig_name {m_b/D_OUT[31]}
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[31]/Q} .lp_asserted_probability 0.52120
set_db -quiet {pin:mkCompareRNS/m_b_D_OUT_reg[31]/Q} .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12714/A2 .lp_asserted_probability 0.01000
set_db -quiet pin:mkCompareRNS/g12714/A2 .lp_asserted_toggle_rate 0.003120
set_db -quiet pin:mkCompareRNS/g12714/B2 .lp_asserted_probability 0.01000
set_db -quiet pin:mkCompareRNS/g12714/B2 .lp_asserted_toggle_rate 0.003120
set_db -quiet pin:mkCompareRNS/g12717/B .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g12717/B .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12718/B .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12718/B .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g12719/A .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g12719/A .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g12720/B .lp_asserted_probability 0.51870
set_db -quiet pin:mkCompareRNS/g12720/B .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g12721/A .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g12721/A .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkCompareRNS/g12722/A .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g12722/A .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12744/A .lp_asserted_probability 0.47830
set_db -quiet pin:mkCompareRNS/g12744/A .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12748/A .lp_asserted_probability 0.48430
set_db -quiet pin:mkCompareRNS/g12748/A .lp_asserted_toggle_rate 0.078164
set_db -quiet pin:mkCompareRNS/g12751/A .lp_asserted_probability 0.49380
set_db -quiet pin:mkCompareRNS/g12751/A .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12754/A .lp_asserted_probability 0.49880
set_db -quiet pin:mkCompareRNS/g12754/A .lp_asserted_toggle_rate 0.073484
set_db -quiet pin:mkCompareRNS/g4430/A .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/g4430/A .lp_asserted_toggle_rate 0.075044
set_db -quiet pin:mkCompareRNS/g4432/A2 .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g4432/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12757/A2 .lp_asserted_probability 0.50420
set_db -quiet pin:mkCompareRNS/g12757/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12758/A1 .lp_asserted_probability 0.52120
set_db -quiet pin:mkCompareRNS/g12758/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12759/A1 .lp_asserted_probability 0.52120
set_db -quiet pin:mkCompareRNS/g12759/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkCompareRNS/g12759/B1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g12759/B1 .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12760/A1 .lp_asserted_probability 0.01000
set_db -quiet pin:mkCompareRNS/g12760/A1 .lp_asserted_toggle_rate 0.003120
set_db -quiet pin:mkCompareRNS/g12760/A2 .lp_asserted_probability 0.46730
set_db -quiet pin:mkCompareRNS/g12760/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkCompareRNS/g12761/I .lp_asserted_probability 0.50270
set_db -quiet pin:mkCompareRNS/g12761/I .lp_asserted_toggle_rate 0.076136
set_db -quiet pin:mkCompareRNS/g4446/I .lp_asserted_probability 0.49180
set_db -quiet pin:mkCompareRNS/g4446/I .lp_asserted_toggle_rate 0.082688
set_db -quiet pin:mkCompareRNS/g4447/I .lp_asserted_probability 0.49230
set_db -quiet pin:mkCompareRNS/g4447/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g4448/I .lp_asserted_probability 0.51870
set_db -quiet pin:mkCompareRNS/g4448/I .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkCompareRNS/g4449/I .lp_asserted_probability 0.50120
set_db -quiet pin:mkCompareRNS/g4449/I .lp_asserted_toggle_rate 0.076604
set_db -quiet pin:mkCompareRNS/g12762/I .lp_asserted_probability 0.53070
set_db -quiet pin:mkCompareRNS/g12762/I .lp_asserted_toggle_rate 0.078632
set_db -quiet inst:mkCompareRNS/m_a_empty_reg_reg .orig_name m_a/empty_reg
set_db -quiet inst:mkCompareRNS/m_a_empty_reg_reg .orig_hdl_instantiated false
set_db -quiet inst:mkCompareRNS/m_a_empty_reg_reg .single_bit_orig_name m_a/empty_reg
set_db -quiet inst:mkCompareRNS/m_a_empty_reg_reg .gint_phase_inversion false
set_db -quiet pin:mkCompareRNS/m_a_empty_reg_reg/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/m_a_empty_reg_reg/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet pin:mkCompareRNS/m_a_empty_reg_reg/Q .orig_name m_a/empty_reg
set_db -quiet pin:mkCompareRNS/m_a_empty_reg_reg/Q .lp_asserted_probability 0.99700
set_db -quiet pin:mkCompareRNS/m_a_empty_reg_reg/Q .lp_asserted_toggle_rate 0.000156
set_db -quiet inst:mkCompareRNS/m_c_empty_reg_reg .orig_name m_c/empty_reg
set_db -quiet inst:mkCompareRNS/m_c_empty_reg_reg .orig_hdl_instantiated false
set_db -quiet inst:mkCompareRNS/m_c_empty_reg_reg .single_bit_orig_name m_c/empty_reg
set_db -quiet inst:mkCompareRNS/m_c_empty_reg_reg .gint_phase_inversion false
set_db -quiet pin:mkCompareRNS/m_c_empty_reg_reg/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/m_c_empty_reg_reg/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet pin:mkCompareRNS/m_c_empty_reg_reg/Q .orig_name m_c/empty_reg
set_db -quiet pin:mkCompareRNS/m_c_empty_reg_reg/Q .lp_asserted_probability 0.99600
set_db -quiet pin:mkCompareRNS/m_c_empty_reg_reg/Q .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3251/B2 .lp_asserted_probability 0.99600
set_db -quiet pin:mkCompareRNS/g3251/B2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3252/B2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkCompareRNS/g3252/B2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3253/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkCompareRNS/g3253/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3253/B1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkCompareRNS/g3253/B1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3254/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkCompareRNS/g3254/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3254/B1 .lp_asserted_probability 0.99800
set_db -quiet pin:mkCompareRNS/g3254/B1 .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkCompareRNS/g3255/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkCompareRNS/g3255/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkCompareRNS/g3256/A1 .lp_asserted_probability 0.99800
set_db -quiet pin:mkCompareRNS/g3256/A1 .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkCompareRNS/g3256/A2 .lp_asserted_probability 0.99900
set_db -quiet pin:mkCompareRNS/g3256/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet module:mkCompareRNS/RC_CG_MOD .logical_hier false
set_db -quiet module:mkCompareRNS/RC_CG_MOD .boundary_opto strict_no
set_db -quiet hport:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_probability 0.99800
set_db -quiet hport:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet hport:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_probability 0.50020
set_db -quiet hport:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_probability 0.50020
set_db -quiet hnet:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_probability 0.99800
set_db -quiet hnet:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet inst:mkCompareRNS/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST .gint_phase_inversion false
set_db -quiet pin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E .lp_asserted_probability 0.99800
set_db -quiet pin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet hpin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_probability 0.99800
set_db -quiet hpin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet hpin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_probability 0.50020
set_db -quiet hpin:mkCompareRNS/RC_CG_DECLONE_HIER_INST/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 16.22-s033_1
## Written on 17:21:11 09-Dec 2017
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_wildcard_end_steps -obj_type root]} {set_db flow_edit_wildcard_end_steps {}}
if {[is_attribute flow_edit_wildcard_start_steps -obj_type root]} {set_db flow_edit_wildcard_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_database_directory -obj_type root]} {set_db flow_database_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 354033a6}
if {[is_attribute flow_overwrite_database -obj_type root]} {set_db flow_overwrite_database false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

