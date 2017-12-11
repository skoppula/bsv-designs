######################################################################

# Created by Genus(TM) Synthesis Solution 16.22-s033_1 on Sun Dec 10 11:46:42 -0500 2017

# This file contains the RC script for design:mkReLURNS

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
set_db -quiet runtime_by_stage { {to_generic 2 18 1 15}  {first_condense 4 24 9 26}  {reify 8 32 10 37}  {global_incr_map 2 34 1 39} }
set_db -quiet hdl_error_on_blackbox true
set_db -quiet tinfo_tstamp_file .rs_mrhamid.tstamp
set_db -quiet metric_enable true
set_db -quiet source_verbose_info false
set_db -quiet script_search_path {. /homes/mrhamid/6888_prj/6888_Project/sim_syn/syn/common}
set_db -quiet syn_generic_effort high
set_db -quiet lp_power_analysis_effort high
set_db -quiet flow_metrics_snapshot_uuid 354125f7
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
define_clock -name clk -domain domain_1 -period 6400.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mkReLURNS port:mkReLURNS/CLK
set_db -quiet clock:mkReLURNS/clk .slew {100.0 100.0 100.0 100.0}
set_db -quiet clock:mkReLURNS/clk .clock_network_early_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:mkReLURNS/clk .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:mkReLURNS/clk .clock_setup_uncertainty {100.0 100.0}
set_db -quiet clock:mkReLURNS/clk .clock_hold_uncertainty {100.0 100.0}
define_cost_group -design design:mkReLURNS -name cg_enable_group_clk
define_cost_group -design design:mkReLURNS -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mkReLURNS/clk -name create_clock_delay_domain_1_clk_R_0 port:mkReLURNS/CLK
set_db -quiet external_delay:mkReLURNS/create_clock_delay_domain_1_clk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mkReLURNS/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:mkReLURNS/CLK
set_db -quiet external_delay:mkReLURNS/create_clock_delay_domain_1_clk_F_0 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43 port:mkReLURNS/RST_N
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_1_1 {{port:mkReLURNS/request_put[31]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_2_1 {{port:mkReLURNS/request_put[30]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_3_1 {{port:mkReLURNS/request_put[29]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_4_1 {{port:mkReLURNS/request_put[28]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_5_1 {{port:mkReLURNS/request_put[27]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_6_1 {{port:mkReLURNS/request_put[26]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_7_1 {{port:mkReLURNS/request_put[25]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_8_1 {{port:mkReLURNS/request_put[24]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_9_1 {{port:mkReLURNS/request_put[23]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_10_1 {{port:mkReLURNS/request_put[22]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_11_1 {{port:mkReLURNS/request_put[21]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_12_1 {{port:mkReLURNS/request_put[20]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_13_1 {{port:mkReLURNS/request_put[19]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_14_1 {{port:mkReLURNS/request_put[18]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_15_1 {{port:mkReLURNS/request_put[17]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_16_1 {{port:mkReLURNS/request_put[16]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_17_1 {{port:mkReLURNS/request_put[15]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_18_1 {{port:mkReLURNS/request_put[14]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_19_1 {{port:mkReLURNS/request_put[13]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_20_1 {{port:mkReLURNS/request_put[12]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_21_1 {{port:mkReLURNS/request_put[11]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_22_1 {{port:mkReLURNS/request_put[10]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_23_1 {{port:mkReLURNS/request_put[9]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_24_1 {{port:mkReLURNS/request_put[8]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_25_1 {{port:mkReLURNS/request_put[7]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_26_1 {{port:mkReLURNS/request_put[6]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_27_1 {{port:mkReLURNS/request_put[5]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_28_1 {{port:mkReLURNS/request_put[4]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_29_1 {{port:mkReLURNS/request_put[3]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_30_1 {{port:mkReLURNS/request_put[2]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_31_1 {{port:mkReLURNS/request_put[1]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_32_1 {{port:mkReLURNS/request_put[0]}}
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_33_1 port:mkReLURNS/EN_request_put
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_43_34_1 port:mkReLURNS/EN_response_get
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44 port:mkReLURNS/RST_N
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_35_1 {{port:mkReLURNS/request_put[31]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_36_1 {{port:mkReLURNS/request_put[30]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_37_1 {{port:mkReLURNS/request_put[29]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_38_1 {{port:mkReLURNS/request_put[28]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_39_1 {{port:mkReLURNS/request_put[27]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_40_1 {{port:mkReLURNS/request_put[26]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_41_1 {{port:mkReLURNS/request_put[25]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_42_1 {{port:mkReLURNS/request_put[24]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_43_1 {{port:mkReLURNS/request_put[23]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_44_1 {{port:mkReLURNS/request_put[22]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_45_1 {{port:mkReLURNS/request_put[21]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_46_1 {{port:mkReLURNS/request_put[20]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_47_1 {{port:mkReLURNS/request_put[19]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_48_1 {{port:mkReLURNS/request_put[18]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_49_1 {{port:mkReLURNS/request_put[17]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_50_1 {{port:mkReLURNS/request_put[16]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_51_1 {{port:mkReLURNS/request_put[15]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_52_1 {{port:mkReLURNS/request_put[14]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_53_1 {{port:mkReLURNS/request_put[13]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_54_1 {{port:mkReLURNS/request_put[12]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_55_1 {{port:mkReLURNS/request_put[11]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_56_1 {{port:mkReLURNS/request_put[10]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_57_1 {{port:mkReLURNS/request_put[9]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_58_1 {{port:mkReLURNS/request_put[8]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_59_1 {{port:mkReLURNS/request_put[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_60_1 {{port:mkReLURNS/request_put[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_61_1 {{port:mkReLURNS/request_put[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_62_1 {{port:mkReLURNS/request_put[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_63_1 {{port:mkReLURNS/request_put[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_64_1 {{port:mkReLURNS/request_put[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_65_1 {{port:mkReLURNS/request_put[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_66_1 {{port:mkReLURNS/request_put[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_67_1 port:mkReLURNS/EN_request_put
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_44_68_1 port:mkReLURNS/EN_response_get
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48 port:mkReLURNS/RDY_request_put
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_69_1 {{port:mkReLURNS/response_get[31]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_70_1 {{port:mkReLURNS/response_get[30]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_71_1 {{port:mkReLURNS/response_get[29]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_72_1 {{port:mkReLURNS/response_get[28]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_73_1 {{port:mkReLURNS/response_get[27]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_74_1 {{port:mkReLURNS/response_get[26]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_75_1 {{port:mkReLURNS/response_get[25]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_76_1 {{port:mkReLURNS/response_get[24]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_77_1 {{port:mkReLURNS/response_get[23]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_78_1 {{port:mkReLURNS/response_get[22]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_79_1 {{port:mkReLURNS/response_get[21]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_80_1 {{port:mkReLURNS/response_get[20]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_81_1 {{port:mkReLURNS/response_get[19]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_82_1 {{port:mkReLURNS/response_get[18]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_83_1 {{port:mkReLURNS/response_get[17]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_84_1 {{port:mkReLURNS/response_get[16]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_85_1 {{port:mkReLURNS/response_get[15]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_86_1 {{port:mkReLURNS/response_get[14]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_87_1 {{port:mkReLURNS/response_get[13]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_88_1 {{port:mkReLURNS/response_get[12]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_89_1 {{port:mkReLURNS/response_get[11]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_90_1 {{port:mkReLURNS/response_get[10]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_91_1 {{port:mkReLURNS/response_get[9]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_92_1 {{port:mkReLURNS/response_get[8]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_93_1 {{port:mkReLURNS/response_get[7]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_94_1 {{port:mkReLURNS/response_get[6]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_95_1 {{port:mkReLURNS/response_get[5]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_96_1 {{port:mkReLURNS/response_get[4]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_97_1 {{port:mkReLURNS/response_get[3]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_98_1 {{port:mkReLURNS/response_get[2]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_99_1 {{port:mkReLURNS/response_get[1]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_100_1 {{port:mkReLURNS/response_get[0]}}
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_48_101_1 port:mkReLURNS/RDY_response_get
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49 port:mkReLURNS/RDY_request_put
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_102_1 {{port:mkReLURNS/response_get[31]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_103_1 {{port:mkReLURNS/response_get[30]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_104_1 {{port:mkReLURNS/response_get[29]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_105_1 {{port:mkReLURNS/response_get[28]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_106_1 {{port:mkReLURNS/response_get[27]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_107_1 {{port:mkReLURNS/response_get[26]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_108_1 {{port:mkReLURNS/response_get[25]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_109_1 {{port:mkReLURNS/response_get[24]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_110_1 {{port:mkReLURNS/response_get[23]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_111_1 {{port:mkReLURNS/response_get[22]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_112_1 {{port:mkReLURNS/response_get[21]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_113_1 {{port:mkReLURNS/response_get[20]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_114_1 {{port:mkReLURNS/response_get[19]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_115_1 {{port:mkReLURNS/response_get[18]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_116_1 {{port:mkReLURNS/response_get[17]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_117_1 {{port:mkReLURNS/response_get[16]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_118_1 {{port:mkReLURNS/response_get[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_119_1 {{port:mkReLURNS/response_get[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_120_1 {{port:mkReLURNS/response_get[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_121_1 {{port:mkReLURNS/response_get[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_122_1 {{port:mkReLURNS/response_get[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_123_1 {{port:mkReLURNS/response_get[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_124_1 {{port:mkReLURNS/response_get[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_125_1 {{port:mkReLURNS/response_get[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_126_1 {{port:mkReLURNS/response_get[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_127_1 {{port:mkReLURNS/response_get[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_128_1 {{port:mkReLURNS/response_get[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_129_1 {{port:mkReLURNS/response_get[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_130_1 {{port:mkReLURNS/response_get[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_131_1 {{port:mkReLURNS/response_get[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_132_1 {{port:mkReLURNS/response_get[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_133_1 {{port:mkReLURNS/response_get[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:mkReLURNS/clk -name constraints_tsmc65lp_line_49_134_1 port:mkReLURNS/RDY_response_get
path_group -paths [specify_paths -to clock:mkReLURNS/clk]  -name clk -group cost_group:mkReLURNS/clk -user_priority -1047552
path_group -paths [specify_paths -through {hpin:mkReLURNS/m_a_RC_CG_HIER_INST0/enable hpin:mkReLURNS/m_c_RC_CG_HIER_INST1/enable}]  -name cg_enable_group_clk -group cost_group:mkReLURNS/cg_enable_group_clk
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:mkReLURNS .max_transition 100.0
set_db -quiet design:mkReLURNS .max_fanout 16.000
set_db -quiet design:mkReLURNS .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 58903} {cell_count 18847} {utilization  0.00} {runtime 2 18 1 15} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 6067} {cell_count 1734} {utilization  0.00} {runtime 4 24 9 26} }{reify {wns 154} {tns 0} {vep 0} {area 3213} {cell_count 1136} {utilization  0.00} {runtime 8 32 10 37} }{global_incr_map {wns 110} {tns 0} {vep 0} {area 3065} {cell_count 1087} {utilization  0.00} {runtime 2 34 1 39} }}
set_db -quiet design:mkReLURNS .hdl_user_name mkReLURNS
set_db -quiet design:mkReLURNS .hdl_filelist {{default -sv {SYNTHESIS} {/homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/relu/vlog/mkReLURNS.v /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib/Verilog/FIFOL1.v} {/homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/relu/vlog /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib/Verilog}}}
set_db -quiet design:mkReLURNS .verification_directory build/tsmc65lp/156M_32_Dec10_1146/fv
set_db -quiet design:mkReLURNS .max_dynamic_power 0.0
set_db -quiet design:mkReLURNS .arch_filename /homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/relu/vlog/mkReLURNS.v
set_db -quiet design:mkReLURNS .entity_filename /homes/mrhamid/6888_prj/6888_Project/sim_syn/bsv/relu/vlog/mkReLURNS.v
set_db -quiet port:mkReLURNS/CLK .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/CLK .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/CLK .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/CLK .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/CLK .min_transition no_value
set_db -quiet port:mkReLURNS/CLK .max_fanout 16.000
set_db -quiet port:mkReLURNS/CLK .lp_asserted_probability 0.50020
set_db -quiet port:mkReLURNS/CLK .lp_asserted_toggle_rate 0.312656
set_db -quiet port:mkReLURNS/RST_N .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/RST_N .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/RST_N .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/RST_N .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/RST_N .min_transition no_value
set_db -quiet port:mkReLURNS/RST_N .max_fanout 16.000
set_db -quiet port:mkReLURNS/RST_N .lp_asserted_probability 0.99900
set_db -quiet port:mkReLURNS/RST_N .lp_asserted_toggle_rate 0.000156
set_db -quiet {port:mkReLURNS/request_put[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[31]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[31]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[31]} .lp_asserted_probability 0.52220
set_db -quiet {port:mkReLURNS/request_put[31]} .lp_asserted_toggle_rate 0.084873
set_db -quiet {port:mkReLURNS/request_put[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[30]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[30]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[30]} .lp_asserted_probability 0.47630
set_db -quiet {port:mkReLURNS/request_put[30]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {port:mkReLURNS/request_put[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[29]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[29]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[29]} .lp_asserted_probability 0.49430
set_db -quiet {port:mkReLURNS/request_put[29]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {port:mkReLURNS/request_put[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[28]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[28]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[28]} .lp_asserted_probability 0.46430
set_db -quiet {port:mkReLURNS/request_put[28]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkReLURNS/request_put[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[27]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[27]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[27]} .lp_asserted_probability 0.51320
set_db -quiet {port:mkReLURNS/request_put[27]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {port:mkReLURNS/request_put[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[26]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[26]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[26]} .lp_asserted_probability 0.50320
set_db -quiet {port:mkReLURNS/request_put[26]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkReLURNS/request_put[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[25]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[25]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[25]} .lp_asserted_probability 0.50370
set_db -quiet {port:mkReLURNS/request_put[25]} .lp_asserted_toggle_rate 0.082220
set_db -quiet {port:mkReLURNS/request_put[24]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[24]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[24]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[24]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[24]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[24]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[24]} .lp_asserted_probability 0.01100
set_db -quiet {port:mkReLURNS/request_put[24]} .lp_asserted_toggle_rate 0.003432
set_db -quiet {port:mkReLURNS/request_put[23]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[23]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[23]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[23]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[23]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[23]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[23]} .lp_asserted_probability 0.52170
set_db -quiet {port:mkReLURNS/request_put[23]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {port:mkReLURNS/request_put[22]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[22]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[22]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[22]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[22]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[22]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[22]} .lp_asserted_probability 0.50420
set_db -quiet {port:mkReLURNS/request_put[22]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkReLURNS/request_put[21]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[21]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[21]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[21]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[21]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[21]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[21]} .lp_asserted_probability 0.50820
set_db -quiet {port:mkReLURNS/request_put[21]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkReLURNS/request_put[20]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[20]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[20]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[20]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[20]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[20]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[20]} .lp_asserted_probability 0.49730
set_db -quiet {port:mkReLURNS/request_put[20]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {port:mkReLURNS/request_put[19]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[19]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[19]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[19]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[19]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[19]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[19]} .lp_asserted_probability 0.51770
set_db -quiet {port:mkReLURNS/request_put[19]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {port:mkReLURNS/request_put[18]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[18]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[18]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[18]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[18]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[18]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[18]} .lp_asserted_probability 0.52270
set_db -quiet {port:mkReLURNS/request_put[18]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {port:mkReLURNS/request_put[17]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[17]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[17]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[17]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[17]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[17]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[17]} .lp_asserted_probability 0.47630
set_db -quiet {port:mkReLURNS/request_put[17]} .lp_asserted_toggle_rate 0.079412
set_db -quiet {port:mkReLURNS/request_put[16]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[16]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[16]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[16]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[16]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[16]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[16]} .lp_asserted_probability 0.47330
set_db -quiet {port:mkReLURNS/request_put[16]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {port:mkReLURNS/request_put[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[15]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[15]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[15]} .lp_asserted_probability 0.48930
set_db -quiet {port:mkReLURNS/request_put[15]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkReLURNS/request_put[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[14]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[14]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[14]} .lp_asserted_probability 0.48930
set_db -quiet {port:mkReLURNS/request_put[14]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {port:mkReLURNS/request_put[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[13]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[13]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[13]} .lp_asserted_probability 0.51570
set_db -quiet {port:mkReLURNS/request_put[13]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {port:mkReLURNS/request_put[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[12]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[12]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[12]} .lp_asserted_probability 0.50120
set_db -quiet {port:mkReLURNS/request_put[12]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {port:mkReLURNS/request_put[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[11]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[11]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[11]} .lp_asserted_probability 0.51620
set_db -quiet {port:mkReLURNS/request_put[11]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {port:mkReLURNS/request_put[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[10]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[10]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[10]} .lp_asserted_probability 0.50020
set_db -quiet {port:mkReLURNS/request_put[10]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {port:mkReLURNS/request_put[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[9]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[9]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[9]} .lp_asserted_probability 0.48830
set_db -quiet {port:mkReLURNS/request_put[9]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {port:mkReLURNS/request_put[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[8]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[8]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[8]} .lp_asserted_probability 0.00400
set_db -quiet {port:mkReLURNS/request_put[8]} .lp_asserted_toggle_rate 0.001248
set_db -quiet {port:mkReLURNS/request_put[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[7]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[7]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[7]} .lp_asserted_probability 0.50370
set_db -quiet {port:mkReLURNS/request_put[7]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {port:mkReLURNS/request_put[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[6]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[6]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[6]} .lp_asserted_probability 0.50620
set_db -quiet {port:mkReLURNS/request_put[6]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkReLURNS/request_put[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[5]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[5]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[5]} .lp_asserted_probability 0.48030
set_db -quiet {port:mkReLURNS/request_put[5]} .lp_asserted_toggle_rate 0.080348
set_db -quiet {port:mkReLURNS/request_put[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[4]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[4]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[4]} .lp_asserted_probability 0.52470
set_db -quiet {port:mkReLURNS/request_put[4]} .lp_asserted_toggle_rate 0.081908
set_db -quiet {port:mkReLURNS/request_put[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[3]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[3]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[3]} .lp_asserted_probability 0.50420
set_db -quiet {port:mkReLURNS/request_put[3]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {port:mkReLURNS/request_put[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[2]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[2]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[2]} .lp_asserted_probability 0.50920
set_db -quiet {port:mkReLURNS/request_put[2]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {port:mkReLURNS/request_put[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[1]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[1]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[1]} .lp_asserted_probability 0.48230
set_db -quiet {port:mkReLURNS/request_put[1]} .lp_asserted_toggle_rate 0.076136
set_db -quiet {port:mkReLURNS/request_put[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet {port:mkReLURNS/request_put[0]} .min_transition no_value
set_db -quiet {port:mkReLURNS/request_put[0]} .max_fanout 16.000
set_db -quiet {port:mkReLURNS/request_put[0]} .lp_asserted_probability 0.48580
set_db -quiet {port:mkReLURNS/request_put[0]} .lp_asserted_toggle_rate 0.078164
set_db -quiet port:mkReLURNS/EN_request_put .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_request_put .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_request_put .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_request_put .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_request_put .min_transition no_value
set_db -quiet port:mkReLURNS/EN_request_put .max_fanout 16.000
set_db -quiet port:mkReLURNS/EN_request_put .lp_asserted_probability 0.99800
set_db -quiet port:mkReLURNS/EN_request_put .lp_asserted_toggle_rate 0.000780
set_db -quiet port:mkReLURNS/EN_response_get .driver_pin_rise_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_response_get .driver_pin_fall_min lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_response_get .driver_pin_rise_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_response_get .driver_pin_fall_max lib_pin:default_emulate_libset_max/tcbn65lpwc/INVD2/ZN
set_db -quiet port:mkReLURNS/EN_response_get .min_transition no_value
set_db -quiet port:mkReLURNS/EN_response_get .max_fanout 16.000
set_db -quiet port:mkReLURNS/EN_response_get .lp_asserted_probability 0.99600
set_db -quiet port:mkReLURNS/EN_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet port:mkReLURNS/RDY_request_put .external_pin_cap_min 5.0
set_db -quiet port:mkReLURNS/RDY_request_put .external_capacitance_max {5.0 5.0}
set_db -quiet port:mkReLURNS/RDY_request_put .external_capacitance_min 5.0
set_db -quiet port:mkReLURNS/RDY_request_put .min_transition no_value
set_db -quiet port:mkReLURNS/RDY_request_put .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[31]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[31]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[31]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[31]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[31]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[31]} .lp_asserted_probability 0.34350
set_db -quiet {port:mkReLURNS/response_get[31]} .lp_asserted_toggle_rate 0.073484
set_db -quiet {port:mkReLURNS/response_get[30]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[30]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[30]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[30]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[30]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[30]} .lp_asserted_probability 0.64150
set_db -quiet {port:mkReLURNS/response_get[30]} .lp_asserted_toggle_rate 0.071455
set_db -quiet {port:mkReLURNS/response_get[29]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[29]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[29]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[29]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[29]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[29]} .lp_asserted_probability 0.66750
set_db -quiet {port:mkReLURNS/response_get[29]} .lp_asserted_toggle_rate 0.068023
set_db -quiet {port:mkReLURNS/response_get[28]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[28]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[28]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[28]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[28]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[28]} .lp_asserted_probability 0.64150
set_db -quiet {port:mkReLURNS/response_get[28]} .lp_asserted_toggle_rate 0.070363
set_db -quiet {port:mkReLURNS/response_get[27]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[27]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[27]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[27]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[27]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[27]} .lp_asserted_probability 0.68250
set_db -quiet {port:mkReLURNS/response_get[27]} .lp_asserted_toggle_rate 0.068803
set_db -quiet {port:mkReLURNS/response_get[26]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[26]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[26]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[26]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[26]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[26]} .lp_asserted_probability 0.66150
set_db -quiet {port:mkReLURNS/response_get[26]} .lp_asserted_toggle_rate 0.073015
set_db -quiet {port:mkReLURNS/response_get[25]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[25]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[25]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[25]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[25]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[25]} .lp_asserted_probability 0.66050
set_db -quiet {port:mkReLURNS/response_get[25]} .lp_asserted_toggle_rate 0.068647
set_db -quiet {port:mkReLURNS/response_get[24]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[24]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[24]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[24]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[24]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[24]} .lp_asserted_probability 0.00700
set_db -quiet {port:mkReLURNS/response_get[24]} .lp_asserted_toggle_rate 0.002184
set_db -quiet {port:mkReLURNS/response_get[23]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[23]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[23]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[23]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[23]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[23]} .lp_asserted_probability 0.68250
set_db -quiet {port:mkReLURNS/response_get[23]} .lp_asserted_toggle_rate 0.063030
set_db -quiet {port:mkReLURNS/response_get[22]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[22]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[22]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[22]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[22]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[22]} .lp_asserted_probability 0.33650
set_db -quiet {port:mkReLURNS/response_get[22]} .lp_asserted_toggle_rate 0.072859
set_db -quiet {port:mkReLURNS/response_get[21]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[21]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[21]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[21]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[21]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[21]} .lp_asserted_probability 0.34450
set_db -quiet {port:mkReLURNS/response_get[21]} .lp_asserted_toggle_rate 0.072547
set_db -quiet {port:mkReLURNS/response_get[20]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[20]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[20]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[20]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[20]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[20]} .lp_asserted_probability 0.31550
set_db -quiet {port:mkReLURNS/response_get[20]} .lp_asserted_toggle_rate 0.064435
set_db -quiet {port:mkReLURNS/response_get[19]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[19]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[19]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[19]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[19]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[19]} .lp_asserted_probability 0.34350
set_db -quiet {port:mkReLURNS/response_get[19]} .lp_asserted_toggle_rate 0.065995
set_db -quiet {port:mkReLURNS/response_get[18]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[18]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[18]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[18]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[18]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[18]} .lp_asserted_probability 0.34650
set_db -quiet {port:mkReLURNS/response_get[18]} .lp_asserted_toggle_rate 0.072235
set_db -quiet {port:mkReLURNS/response_get[17]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[17]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[17]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[17]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[17]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[17]} .lp_asserted_probability 0.31550
set_db -quiet {port:mkReLURNS/response_get[17]} .lp_asserted_toggle_rate 0.070675
set_db -quiet {port:mkReLURNS/response_get[16]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[16]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[16]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[16]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[16]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[16]} .lp_asserted_probability 0.29960
set_db -quiet {port:mkReLURNS/response_get[16]} .lp_asserted_toggle_rate 0.063655
set_db -quiet {port:mkReLURNS/response_get[15]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[15]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[15]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[15]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[15]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[15]} .lp_asserted_probability 0.65450
set_db -quiet {port:mkReLURNS/response_get[15]} .lp_asserted_toggle_rate 0.072703
set_db -quiet {port:mkReLURNS/response_get[14]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[14]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[14]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[14]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[14]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[14]} .lp_asserted_probability 0.66150
set_db -quiet {port:mkReLURNS/response_get[14]} .lp_asserted_toggle_rate 0.069271
set_db -quiet {port:mkReLURNS/response_get[13]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[13]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[13]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[13]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[13]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[13]} .lp_asserted_probability 0.68350
set_db -quiet {port:mkReLURNS/response_get[13]} .lp_asserted_toggle_rate 0.066463
set_db -quiet {port:mkReLURNS/response_get[12]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[12]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[12]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[12]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[12]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[12]} .lp_asserted_probability 0.68550
set_db -quiet {port:mkReLURNS/response_get[12]} .lp_asserted_toggle_rate 0.069739
set_db -quiet {port:mkReLURNS/response_get[11]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[11]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[11]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[11]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[11]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[11]} .lp_asserted_probability 0.68250
set_db -quiet {port:mkReLURNS/response_get[11]} .lp_asserted_toggle_rate 0.067867
set_db -quiet {port:mkReLURNS/response_get[10]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[10]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[10]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[10]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[10]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[10]} .lp_asserted_probability 0.68150
set_db -quiet {port:mkReLURNS/response_get[10]} .lp_asserted_toggle_rate 0.065683
set_db -quiet {port:mkReLURNS/response_get[9]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[9]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[9]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[9]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[9]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[9]} .lp_asserted_probability 0.66150
set_db -quiet {port:mkReLURNS/response_get[9]} .lp_asserted_toggle_rate 0.067555
set_db -quiet {port:mkReLURNS/response_get[8]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[8]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[8]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[8]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[8]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[8]} .lp_asserted_probability 0.00200
set_db -quiet {port:mkReLURNS/response_get[8]} .lp_asserted_toggle_rate 0.000624
set_db -quiet {port:mkReLURNS/response_get[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[7]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[7]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[7]} .lp_asserted_probability 0.67650
set_db -quiet {port:mkReLURNS/response_get[7]} .lp_asserted_toggle_rate 0.073796
set_db -quiet {port:mkReLURNS/response_get[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[6]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[6]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[6]} .lp_asserted_probability 0.33950
set_db -quiet {port:mkReLURNS/response_get[6]} .lp_asserted_toggle_rate 0.072391
set_db -quiet {port:mkReLURNS/response_get[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[5]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[5]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[5]} .lp_asserted_probability 0.33850
set_db -quiet {port:mkReLURNS/response_get[5]} .lp_asserted_toggle_rate 0.069895
set_db -quiet {port:mkReLURNS/response_get[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[4]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[4]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[4]} .lp_asserted_probability 0.34850
set_db -quiet {port:mkReLURNS/response_get[4]} .lp_asserted_toggle_rate 0.071143
set_db -quiet {port:mkReLURNS/response_get[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[3]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[3]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[3]} .lp_asserted_probability 0.34550
set_db -quiet {port:mkReLURNS/response_get[3]} .lp_asserted_toggle_rate 0.071143
set_db -quiet {port:mkReLURNS/response_get[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[2]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[2]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[2]} .lp_asserted_probability 0.33950
set_db -quiet {port:mkReLURNS/response_get[2]} .lp_asserted_toggle_rate 0.070519
set_db -quiet {port:mkReLURNS/response_get[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[1]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[1]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[1]} .lp_asserted_probability 0.32650
set_db -quiet {port:mkReLURNS/response_get[1]} .lp_asserted_toggle_rate 0.067555
set_db -quiet {port:mkReLURNS/response_get[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mkReLURNS/response_get[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[0]} .external_capacitance_min 5.0
set_db -quiet {port:mkReLURNS/response_get[0]} .min_transition no_value
set_db -quiet {port:mkReLURNS/response_get[0]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mkReLURNS/response_get[0]} .lp_asserted_probability 0.33250
set_db -quiet {port:mkReLURNS/response_get[0]} .lp_asserted_toggle_rate 0.068959
set_db -quiet port:mkReLURNS/RDY_response_get .external_pin_cap_min 5.0
set_db -quiet port:mkReLURNS/RDY_response_get .external_capacitance_max {5.0 5.0}
set_db -quiet port:mkReLURNS/RDY_response_get .external_capacitance_min 5.0
set_db -quiet port:mkReLURNS/RDY_response_get .min_transition no_value
set_db -quiet port:mkReLURNS/RDY_response_get .external_pin_cap {5.0 5.0}
set_db -quiet port:mkReLURNS/RDY_response_get .lp_asserted_probability 0.99600
set_db -quiet port:mkReLURNS/RDY_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet {hnet:mkReLURNS/request_put[0]} .lp_asserted_probability 0.48580
set_db -quiet {hnet:mkReLURNS/request_put[0]} .lp_asserted_toggle_rate 0.078164
set_db -quiet {hnet:mkReLURNS/request_put[1]} .lp_asserted_probability 0.48230
set_db -quiet {hnet:mkReLURNS/request_put[1]} .lp_asserted_toggle_rate 0.076136
set_db -quiet {hnet:mkReLURNS/request_put[2]} .lp_asserted_probability 0.50920
set_db -quiet {hnet:mkReLURNS/request_put[2]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkReLURNS/request_put[3]} .lp_asserted_probability 0.50420
set_db -quiet {hnet:mkReLURNS/request_put[3]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/request_put[4]} .lp_asserted_probability 0.52470
set_db -quiet {hnet:mkReLURNS/request_put[4]} .lp_asserted_toggle_rate 0.081908
set_db -quiet {hnet:mkReLURNS/request_put[5]} .lp_asserted_probability 0.48030
set_db -quiet {hnet:mkReLURNS/request_put[5]} .lp_asserted_toggle_rate 0.080348
set_db -quiet {hnet:mkReLURNS/request_put[6]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkReLURNS/request_put[6]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/request_put[7]} .lp_asserted_probability 0.50370
set_db -quiet {hnet:mkReLURNS/request_put[7]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkReLURNS/request_put[8]} .lp_asserted_probability 0.00400
set_db -quiet {hnet:mkReLURNS/request_put[8]} .lp_asserted_toggle_rate 0.001248
set_db -quiet {hnet:mkReLURNS/request_put[9]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkReLURNS/request_put[9]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkReLURNS/request_put[10]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkReLURNS/request_put[10]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {hnet:mkReLURNS/request_put[11]} .lp_asserted_probability 0.51620
set_db -quiet {hnet:mkReLURNS/request_put[11]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkReLURNS/request_put[12]} .lp_asserted_probability 0.50120
set_db -quiet {hnet:mkReLURNS/request_put[12]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkReLURNS/request_put[13]} .lp_asserted_probability 0.51570
set_db -quiet {hnet:mkReLURNS/request_put[13]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkReLURNS/request_put[14]} .lp_asserted_probability 0.48930
set_db -quiet {hnet:mkReLURNS/request_put[14]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {hnet:mkReLURNS/request_put[15]} .lp_asserted_probability 0.48930
set_db -quiet {hnet:mkReLURNS/request_put[15]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/request_put[16]} .lp_asserted_probability 0.47330
set_db -quiet {hnet:mkReLURNS/request_put[16]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {hnet:mkReLURNS/request_put[17]} .lp_asserted_probability 0.47630
set_db -quiet {hnet:mkReLURNS/request_put[17]} .lp_asserted_toggle_rate 0.079412
set_db -quiet {hnet:mkReLURNS/request_put[18]} .lp_asserted_probability 0.52270
set_db -quiet {hnet:mkReLURNS/request_put[18]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkReLURNS/request_put[19]} .lp_asserted_probability 0.51770
set_db -quiet {hnet:mkReLURNS/request_put[19]} .lp_asserted_toggle_rate 0.077228
set_db -quiet {hnet:mkReLURNS/request_put[20]} .lp_asserted_probability 0.49730
set_db -quiet {hnet:mkReLURNS/request_put[20]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkReLURNS/request_put[21]} .lp_asserted_probability 0.50820
set_db -quiet {hnet:mkReLURNS/request_put[21]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkReLURNS/request_put[22]} .lp_asserted_probability 0.50420
set_db -quiet {hnet:mkReLURNS/request_put[22]} .lp_asserted_toggle_rate 0.079100
set_db -quiet {hnet:mkReLURNS/request_put[23]} .lp_asserted_probability 0.52170
set_db -quiet {hnet:mkReLURNS/request_put[23]} .lp_asserted_toggle_rate 0.075668
set_db -quiet {hnet:mkReLURNS/request_put[24]} .lp_asserted_probability 0.01100
set_db -quiet {hnet:mkReLURNS/request_put[24]} .lp_asserted_toggle_rate 0.003432
set_db -quiet {hnet:mkReLURNS/request_put[25]} .lp_asserted_probability 0.50370
set_db -quiet {hnet:mkReLURNS/request_put[25]} .lp_asserted_toggle_rate 0.082220
set_db -quiet {hnet:mkReLURNS/request_put[26]} .lp_asserted_probability 0.50320
set_db -quiet {hnet:mkReLURNS/request_put[26]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/request_put[27]} .lp_asserted_probability 0.51320
set_db -quiet {hnet:mkReLURNS/request_put[27]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {hnet:mkReLURNS/request_put[28]} .lp_asserted_probability 0.46430
set_db -quiet {hnet:mkReLURNS/request_put[28]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkReLURNS/request_put[29]} .lp_asserted_probability 0.49430
set_db -quiet {hnet:mkReLURNS/request_put[29]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkReLURNS/request_put[30]} .lp_asserted_probability 0.47630
set_db -quiet {hnet:mkReLURNS/request_put[30]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkReLURNS/request_put[31]} .lp_asserted_probability 0.52220
set_db -quiet {hnet:mkReLURNS/request_put[31]} .lp_asserted_toggle_rate 0.084873
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[0]} .lp_asserted_probability 0.48530
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[0]} .lp_asserted_toggle_rate 0.078008
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[1]} .lp_asserted_probability 0.48230
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[1]} .lp_asserted_toggle_rate 0.075980
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[2]} .lp_asserted_probability 0.50920
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[2]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[3]} .lp_asserted_probability 0.50420
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[3]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[4]} .lp_asserted_probability 0.52370
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[4]} .lp_asserted_toggle_rate 0.081908
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[5]} .lp_asserted_probability 0.48030
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[5]} .lp_asserted_toggle_rate 0.080192
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[6]} .lp_asserted_probability 0.50620
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[6]} .lp_asserted_toggle_rate 0.080504
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[7]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[7]} .lp_asserted_toggle_rate 0.077540
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[8]} .lp_asserted_probability 0.00400
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[8]} .lp_asserted_toggle_rate 0.001248
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[9]} .lp_asserted_probability 0.48830
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[9]} .lp_asserted_toggle_rate 0.075200
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[10]} .lp_asserted_probability 0.50020
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[10]} .lp_asserted_toggle_rate 0.075512
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[11]} .lp_asserted_probability 0.51620
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[11]} .lp_asserted_toggle_rate 0.077696
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[12]} .lp_asserted_probability 0.50120
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[12]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[13]} .lp_asserted_probability 0.51470
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[13]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[14]} .lp_asserted_probability 0.48880
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[14]} .lp_asserted_toggle_rate 0.079256
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[15]} .lp_asserted_probability 0.48880
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[15]} .lp_asserted_toggle_rate 0.080192
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[16]} .lp_asserted_probability 0.47330
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[16]} .lp_asserted_toggle_rate 0.079568
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[17]} .lp_asserted_probability 0.47580
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[17]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[18]} .lp_asserted_probability 0.52220
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[18]} .lp_asserted_toggle_rate 0.078476
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[19]} .lp_asserted_probability 0.51720
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[19]} .lp_asserted_toggle_rate 0.076916
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[20]} .lp_asserted_probability 0.49680
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[20]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[21]} .lp_asserted_probability 0.50770
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[21]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[22]} .lp_asserted_probability 0.50370
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[22]} .lp_asserted_toggle_rate 0.078632
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[23]} .lp_asserted_probability 0.52070
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[23]} .lp_asserted_toggle_rate 0.075512
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[24]} .lp_asserted_probability 0.01100
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[24]} .lp_asserted_toggle_rate 0.003432
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[25]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[25]} .lp_asserted_toggle_rate 0.082064
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[26]} .lp_asserted_probability 0.50270
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[26]} .lp_asserted_toggle_rate 0.080192
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[27]} .lp_asserted_probability 0.51320
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[27]} .lp_asserted_toggle_rate 0.078320
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[28]} .lp_asserted_probability 0.46430
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[28]} .lp_asserted_toggle_rate 0.078944
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[29]} .lp_asserted_probability 0.49430
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[29]} .lp_asserted_toggle_rate 0.077852
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[30]} .lp_asserted_probability 0.47580
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[30]} .lp_asserted_toggle_rate 0.077384
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[31]} .lp_asserted_probability 0.52170
set_db -quiet {hnet:mkReLURNS/m_a_D_OUT[31]} .lp_asserted_toggle_rate 0.084561
set_db -quiet hnet:mkReLURNS/m_a_EMPTY_N .lp_asserted_probability 0.99700
set_db -quiet hnet:mkReLURNS/m_a_EMPTY_N .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkReLURNS/EN_request_put .lp_asserted_probability 0.99800
set_db -quiet hnet:mkReLURNS/EN_request_put .lp_asserted_toggle_rate 0.000780
set_db -quiet hnet:mkReLURNS/EN_response_get .lp_asserted_probability 0.99600
set_db -quiet hnet:mkReLURNS/EN_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet {hnet:mkReLURNS/response_get[0]} .lp_asserted_probability 0.33250
set_db -quiet {hnet:mkReLURNS/response_get[0]} .lp_asserted_toggle_rate 0.068959
set_db -quiet {hnet:mkReLURNS/response_get[1]} .lp_asserted_probability 0.32650
set_db -quiet {hnet:mkReLURNS/response_get[1]} .lp_asserted_toggle_rate 0.067555
set_db -quiet {hnet:mkReLURNS/response_get[2]} .lp_asserted_probability 0.33950
set_db -quiet {hnet:mkReLURNS/response_get[2]} .lp_asserted_toggle_rate 0.070519
set_db -quiet {hnet:mkReLURNS/response_get[3]} .lp_asserted_probability 0.34550
set_db -quiet {hnet:mkReLURNS/response_get[3]} .lp_asserted_toggle_rate 0.071143
set_db -quiet {hnet:mkReLURNS/response_get[4]} .lp_asserted_probability 0.34850
set_db -quiet {hnet:mkReLURNS/response_get[4]} .lp_asserted_toggle_rate 0.071143
set_db -quiet {hnet:mkReLURNS/response_get[5]} .lp_asserted_probability 0.33850
set_db -quiet {hnet:mkReLURNS/response_get[5]} .lp_asserted_toggle_rate 0.069895
set_db -quiet {hnet:mkReLURNS/response_get[6]} .lp_asserted_probability 0.33950
set_db -quiet {hnet:mkReLURNS/response_get[6]} .lp_asserted_toggle_rate 0.072391
set_db -quiet {hnet:mkReLURNS/response_get[7]} .lp_asserted_probability 0.67650
set_db -quiet {hnet:mkReLURNS/response_get[7]} .lp_asserted_toggle_rate 0.073796
set_db -quiet {hnet:mkReLURNS/response_get[8]} .lp_asserted_probability 0.00200
set_db -quiet {hnet:mkReLURNS/response_get[8]} .lp_asserted_toggle_rate 0.000624
set_db -quiet {hnet:mkReLURNS/response_get[9]} .lp_asserted_probability 0.66150
set_db -quiet {hnet:mkReLURNS/response_get[9]} .lp_asserted_toggle_rate 0.067555
set_db -quiet {hnet:mkReLURNS/response_get[10]} .lp_asserted_probability 0.68150
set_db -quiet {hnet:mkReLURNS/response_get[10]} .lp_asserted_toggle_rate 0.065683
set_db -quiet {hnet:mkReLURNS/response_get[11]} .lp_asserted_probability 0.68250
set_db -quiet {hnet:mkReLURNS/response_get[11]} .lp_asserted_toggle_rate 0.067867
set_db -quiet {hnet:mkReLURNS/response_get[12]} .lp_asserted_probability 0.68550
set_db -quiet {hnet:mkReLURNS/response_get[12]} .lp_asserted_toggle_rate 0.069739
set_db -quiet {hnet:mkReLURNS/response_get[13]} .lp_asserted_probability 0.68350
set_db -quiet {hnet:mkReLURNS/response_get[13]} .lp_asserted_toggle_rate 0.066463
set_db -quiet {hnet:mkReLURNS/response_get[14]} .lp_asserted_probability 0.66150
set_db -quiet {hnet:mkReLURNS/response_get[14]} .lp_asserted_toggle_rate 0.069271
set_db -quiet {hnet:mkReLURNS/response_get[15]} .lp_asserted_probability 0.65450
set_db -quiet {hnet:mkReLURNS/response_get[15]} .lp_asserted_toggle_rate 0.072703
set_db -quiet {hnet:mkReLURNS/response_get[16]} .lp_asserted_probability 0.29960
set_db -quiet {hnet:mkReLURNS/response_get[16]} .lp_asserted_toggle_rate 0.063655
set_db -quiet {hnet:mkReLURNS/response_get[17]} .lp_asserted_probability 0.31550
set_db -quiet {hnet:mkReLURNS/response_get[17]} .lp_asserted_toggle_rate 0.070675
set_db -quiet {hnet:mkReLURNS/response_get[18]} .lp_asserted_probability 0.34650
set_db -quiet {hnet:mkReLURNS/response_get[18]} .lp_asserted_toggle_rate 0.072235
set_db -quiet {hnet:mkReLURNS/response_get[19]} .lp_asserted_probability 0.34350
set_db -quiet {hnet:mkReLURNS/response_get[19]} .lp_asserted_toggle_rate 0.065995
set_db -quiet {hnet:mkReLURNS/response_get[20]} .lp_asserted_probability 0.31550
set_db -quiet {hnet:mkReLURNS/response_get[20]} .lp_asserted_toggle_rate 0.064435
set_db -quiet {hnet:mkReLURNS/response_get[21]} .lp_asserted_probability 0.34450
set_db -quiet {hnet:mkReLURNS/response_get[21]} .lp_asserted_toggle_rate 0.072547
set_db -quiet {hnet:mkReLURNS/response_get[22]} .lp_asserted_probability 0.33650
set_db -quiet {hnet:mkReLURNS/response_get[22]} .lp_asserted_toggle_rate 0.072859
set_db -quiet {hnet:mkReLURNS/response_get[23]} .lp_asserted_probability 0.68250
set_db -quiet {hnet:mkReLURNS/response_get[23]} .lp_asserted_toggle_rate 0.063030
set_db -quiet {hnet:mkReLURNS/response_get[24]} .lp_asserted_probability 0.00700
set_db -quiet {hnet:mkReLURNS/response_get[24]} .lp_asserted_toggle_rate 0.002184
set_db -quiet {hnet:mkReLURNS/response_get[25]} .lp_asserted_probability 0.66050
set_db -quiet {hnet:mkReLURNS/response_get[25]} .lp_asserted_toggle_rate 0.068647
set_db -quiet {hnet:mkReLURNS/response_get[26]} .lp_asserted_probability 0.66150
set_db -quiet {hnet:mkReLURNS/response_get[26]} .lp_asserted_toggle_rate 0.073015
set_db -quiet {hnet:mkReLURNS/response_get[27]} .lp_asserted_probability 0.68250
set_db -quiet {hnet:mkReLURNS/response_get[27]} .lp_asserted_toggle_rate 0.068803
set_db -quiet {hnet:mkReLURNS/response_get[28]} .lp_asserted_probability 0.64150
set_db -quiet {hnet:mkReLURNS/response_get[28]} .lp_asserted_toggle_rate 0.070363
set_db -quiet {hnet:mkReLURNS/response_get[29]} .lp_asserted_probability 0.66750
set_db -quiet {hnet:mkReLURNS/response_get[29]} .lp_asserted_toggle_rate 0.068023
set_db -quiet {hnet:mkReLURNS/response_get[30]} .lp_asserted_probability 0.64150
set_db -quiet {hnet:mkReLURNS/response_get[30]} .lp_asserted_toggle_rate 0.071455
set_db -quiet {hnet:mkReLURNS/response_get[31]} .lp_asserted_probability 0.34350
set_db -quiet {hnet:mkReLURNS/response_get[31]} .lp_asserted_toggle_rate 0.073484
set_db -quiet hnet:mkReLURNS/RDY_response_get .lp_asserted_probability 0.99600
set_db -quiet hnet:mkReLURNS/RDY_response_get .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkReLURNS/RST_N .lp_asserted_probability 0.99900
set_db -quiet hnet:mkReLURNS/RST_N .lp_asserted_toggle_rate 0.000156
set_db -quiet hnet:mkReLURNS/CLK .lp_asserted_probability 0.50020
set_db -quiet hnet:mkReLURNS/CLK .lp_asserted_toggle_rate 0.312656
set_db -quiet module:mkReLURNS/RC_CG_MOD .logical_hier false
set_db -quiet module:mkReLURNS/RC_CG_MOD .boundary_opto strict_no
set_db -quiet hport:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_probability 0.99800
set_db -quiet hport:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet hport:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_probability 0.50020
set_db -quiet hport:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_probability 0.50020
set_db -quiet hnet:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_probability 0.99800
set_db -quiet hnet:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet inst:mkReLURNS/m_a_RC_CG_HIER_INST0/RC_CGIC_INST .gint_phase_inversion false
set_db -quiet pin:mkReLURNS/m_a_RC_CG_HIER_INST0/RC_CGIC_INST/E .lp_asserted_probability 0.99800
set_db -quiet pin:mkReLURNS/m_a_RC_CG_HIER_INST0/RC_CGIC_INST/E .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkReLURNS/m_a_RC_CG_HIER_INST0/RC_CGIC_INST/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/m_a_RC_CG_HIER_INST0/RC_CGIC_INST/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet hpin:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_probability 0.99800
set_db -quiet hpin:mkReLURNS/m_a_RC_CG_HIER_INST0/enable .lp_asserted_toggle_rate 0.000780
set_db -quiet hpin:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_probability 0.50020
set_db -quiet hpin:mkReLURNS/m_a_RC_CG_HIER_INST0/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet module:mkReLURNS/RC_CG_MOD_1 .logical_hier false
set_db -quiet module:mkReLURNS/RC_CG_MOD_1 .boundary_opto strict_no
set_db -quiet hport:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_probability 0.50020
set_db -quiet hport:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet hnet:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_probability 0.50020
set_db -quiet hnet:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet inst:mkReLURNS/m_c_RC_CG_HIER_INST1/RC_CGIC_INST .gint_phase_inversion false
set_db -quiet pin:mkReLURNS/m_c_RC_CG_HIER_INST1/RC_CGIC_INST/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/m_c_RC_CG_HIER_INST1/RC_CGIC_INST/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet hpin:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_probability 0.50020
set_db -quiet hpin:mkReLURNS/m_c_RC_CG_HIER_INST1/ck_in .lp_asserted_toggle_rate 0.312656
set_db -quiet module:mkReLURNS/remainder_unsigned .logical_hier false
set_db -quiet hinst:mkReLURNS/rem_187_71 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkReLURNS/remainder_unsigned_82 .logical_hier false
set_db -quiet hinst:mkReLURNS/rem_190_55 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkReLURNS/remainder_unsigned_81 .logical_hier false
set_db -quiet hinst:mkReLURNS/rem_202_70 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkReLURNS/remainder_unsigned_80 .logical_hier false
set_db -quiet hinst:mkReLURNS/rem_205_53 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet module:mkReLURNS/remainder_unsigned_662 .logical_hier false
set_db -quiet hinst:mkReLURNS/rem_224_44 .rtlop_info {{} 0 0 0 3 0 89 0 2 1 1 0}
set_db -quiet pin:mkReLURNS/g2133/I .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g2133/I .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g2321__4599/A2 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g2321__4599/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2327__1297/A2 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g2327__1297/A2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2328__2006/A2 .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g2328__2006/A2 .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g2330__2833/A2 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g2330__2833/A2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2336__3377/A2 .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g2336__3377/A2 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g2340__5927/A2 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g2340__5927/A2 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2340__5927/B2 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g2340__5927/B2 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2341__2001/A2 .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g2341__2001/A2 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g2348__9771/A1 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g2348__9771/A1 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g2348__9771/A2 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g2348__9771/A2 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g2349__3457/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g2349__3457/A1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2349__3457/A2 .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g2349__3457/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2350__1279/A1 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g2350__1279/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2350__1279/A2 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g2350__1279/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2351/I .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g2351/I .lp_asserted_toggle_rate 0.077540
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[7]} .orig_name {{m_a/D_OUT[7]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[7]} .single_bit_orig_name {m_a/D_OUT[7]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[7]/D} .lp_asserted_probability 0.50370
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[7]/D} .lp_asserted_toggle_rate 0.077696
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[7]/Q} .orig_name {m_a/D_OUT[7]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[7]/Q} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[7]/Q} .lp_asserted_toggle_rate 0.077540
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[6]} .orig_name {{m_a/D_OUT[6]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[6]} .single_bit_orig_name {m_a/D_OUT[6]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[6]/D} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[6]/D} .lp_asserted_toggle_rate 0.080504
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[6]/Q} .orig_name {m_a/D_OUT[6]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[6]/Q} .lp_asserted_probability 0.50620
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[6]/Q} .lp_asserted_toggle_rate 0.080504
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[2]} .orig_name {{m_a/D_OUT[2]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[2]} .single_bit_orig_name {m_a/D_OUT[2]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[2]/D} .lp_asserted_probability 0.50920
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[2]/D} .lp_asserted_toggle_rate 0.075200
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[2]/Q} .orig_name {m_a/D_OUT[2]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[2]/Q} .lp_asserted_probability 0.50920
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[2]/Q} .lp_asserted_toggle_rate 0.075200
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[5]} .orig_name {{m_a/D_OUT[5]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[5]} .single_bit_orig_name {m_a/D_OUT[5]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[5]/D} .lp_asserted_probability 0.48030
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[5]/D} .lp_asserted_toggle_rate 0.080348
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[5]/Q} .orig_name {m_a/D_OUT[5]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[5]/Q} .lp_asserted_probability 0.48030
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[5]/Q} .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2364/I .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g2364/I .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2365/I .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g2365/I .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g2370/I .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g2370/I .lp_asserted_toggle_rate 0.081908
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[3]} .orig_name {{m_a/D_OUT[3]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[3]} .single_bit_orig_name {m_a/D_OUT[3]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[3]/D} .lp_asserted_probability 0.50420
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[3]/D} .lp_asserted_toggle_rate 0.080504
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[3]/Q} .orig_name {m_a/D_OUT[3]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[3]/Q} .lp_asserted_probability 0.50420
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[3]/Q} .lp_asserted_toggle_rate 0.080504
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[8]} .orig_name {{m_a/D_OUT[8]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[8]} .single_bit_orig_name {m_a/D_OUT[8]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[8]/D} .lp_asserted_probability 0.00400
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[8]/D} .lp_asserted_toggle_rate 0.001248
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[8]/Q} .orig_name {m_a/D_OUT[8]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[8]/Q} .lp_asserted_probability 0.00400
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[8]/Q} .lp_asserted_toggle_rate 0.001248
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[1]} .orig_name {{m_a/D_OUT[1]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[1]} .single_bit_orig_name {m_a/D_OUT[1]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[1]/D} .lp_asserted_probability 0.48230
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[1]/D} .lp_asserted_toggle_rate 0.076136
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[1]/Q} .orig_name {m_a/D_OUT[1]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[1]/Q} .lp_asserted_probability 0.48230
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[1]/Q} .lp_asserted_toggle_rate 0.075980
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[0]} .orig_name {{m_a/D_OUT[0]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[0]} .single_bit_orig_name {m_a/D_OUT[0]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[0]/D} .lp_asserted_probability 0.48580
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[0]/D} .lp_asserted_toggle_rate 0.078164
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[0]/Q} .orig_name {m_a/D_OUT[0]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[0]/Q} .lp_asserted_probability 0.48530
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[0]/Q} .lp_asserted_toggle_rate 0.078008
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[4]} .orig_name {{m_a/D_OUT[4]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[4]} .single_bit_orig_name {m_a/D_OUT[4]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[4]/D} .lp_asserted_probability 0.52470
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[4]/D} .lp_asserted_toggle_rate 0.081908
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[4]/Q} .orig_name {m_a/D_OUT[4]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[4]/Q} .lp_asserted_probability 0.52370
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[4]/Q} .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g2__6179/A2 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g2__6179/A2 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2376__7837/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g2376__7837/A1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2377__7557/A1 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g2377__7557/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2378__7654/A1 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g2378__7654/A1 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g2378__7654/A2 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g2378__7654/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[9]} .orig_name {{m_a/D_OUT[9]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[9]} .single_bit_orig_name {m_a/D_OUT[9]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[9]/D} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[9]/D} .lp_asserted_toggle_rate 0.075200
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[9]/Q} .orig_name {m_a/D_OUT[9]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[9]/Q} .lp_asserted_probability 0.48830
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[9]/Q} .lp_asserted_toggle_rate 0.075200
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[10]} .orig_name {{m_a/D_OUT[10]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[10]} .single_bit_orig_name {m_a/D_OUT[10]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[10]/D} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[10]/D} .lp_asserted_toggle_rate 0.075668
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[10]/Q} .orig_name {m_a/D_OUT[10]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[10]/Q} .lp_asserted_probability 0.50020
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[10]/Q} .lp_asserted_toggle_rate 0.075512
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[11]} .orig_name {{m_a/D_OUT[11]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[11]} .single_bit_orig_name {m_a/D_OUT[11]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[11]/D} .lp_asserted_probability 0.51620
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[11]/D} .lp_asserted_toggle_rate 0.077696
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[11]/Q} .orig_name {m_a/D_OUT[11]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[11]/Q} .lp_asserted_probability 0.51620
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[11]/Q} .lp_asserted_toggle_rate 0.077696
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[12]} .orig_name {{m_a/D_OUT[12]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[12]} .single_bit_orig_name {m_a/D_OUT[12]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[12]/D} .lp_asserted_probability 0.50120
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[12]/D} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[12]/Q} .orig_name {m_a/D_OUT[12]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[12]/Q} .lp_asserted_probability 0.50120
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[12]/Q} .lp_asserted_toggle_rate 0.078320
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[13]} .orig_name {{m_a/D_OUT[13]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[13]} .single_bit_orig_name {m_a/D_OUT[13]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[13]/D} .lp_asserted_probability 0.51570
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[13]/D} .lp_asserted_toggle_rate 0.078476
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[13]/Q} .orig_name {m_a/D_OUT[13]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[13]/Q} .lp_asserted_probability 0.51470
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[13]/Q} .lp_asserted_toggle_rate 0.078320
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[14]} .orig_name {{m_a/D_OUT[14]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[14]} .single_bit_orig_name {m_a/D_OUT[14]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[14]/D} .lp_asserted_probability 0.48930
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[14]/D} .lp_asserted_toggle_rate 0.079568
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[14]/Q} .orig_name {m_a/D_OUT[14]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[14]/Q} .lp_asserted_probability 0.48880
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[14]/Q} .lp_asserted_toggle_rate 0.079256
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[15]} .orig_name {{m_a/D_OUT[15]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[15]} .single_bit_orig_name {m_a/D_OUT[15]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[15]/D} .lp_asserted_probability 0.48930
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[15]/D} .lp_asserted_toggle_rate 0.080504
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[15]/Q} .orig_name {m_a/D_OUT[15]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[15]/Q} .lp_asserted_probability 0.48880
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[15]/Q} .lp_asserted_toggle_rate 0.080192
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[16]} .orig_name {{m_a/D_OUT[16]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[16]} .single_bit_orig_name {m_a/D_OUT[16]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[16]/D} .lp_asserted_probability 0.47330
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[16]/D} .lp_asserted_toggle_rate 0.079568
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[16]/Q} .orig_name {m_a/D_OUT[16]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[16]/Q} .lp_asserted_probability 0.47330
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[16]/Q} .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g4174__3457/A1 .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g4174__3457/A1 .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g4175__1279/A1 .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g4175__1279/A1 .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g4177__6179/A .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4177__6179/A .lp_asserted_toggle_rate 0.077540
set_db -quiet pin:mkReLURNS/g4178__7837/A .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g4178__7837/A .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4180__7557/A .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g4180__7557/A .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4181__7654/A .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g4181__7654/A .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g4183__8867/A .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g4183__8867/A .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4184__1377/A .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g4184__1377/A .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4189__2007/A2 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g4189__2007/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g4190__1237/A2 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g4190__1237/A2 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g4191__1297/A2 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g4191__1297/A2 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g4192__2006/A2 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g4192__2006/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g4260__3779/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g4260__3779/A2 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4266__2833/A1 .lp_asserted_probability 0.47330
set_db -quiet pin:mkReLURNS/g4266__2833/A1 .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g4266__2833/B1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4266__2833/B1 .lp_asserted_toggle_rate 0.077540
set_db -quiet pin:mkReLURNS/g4267__7547/A1 .lp_asserted_probability 0.47330
set_db -quiet pin:mkReLURNS/g4267__7547/A1 .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g4267__7547/B1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4267__7547/B1 .lp_asserted_toggle_rate 0.077540
set_db -quiet pin:mkReLURNS/g4268__7765/A1 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g4268__7765/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4268__7765/B1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4268__7765/B1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4269__9867/A1 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g4269__9867/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4269__9867/B1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4269__9867/B1 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4271__3377/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g4271__3377/A2 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4274__9719/A1 .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g4274__9719/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4274__9719/B1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g4274__9719/B1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4275__1591/A1 .lp_asserted_probability 0.51620
set_db -quiet pin:mkReLURNS/g4275__1591/A1 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkReLURNS/g4275__1591/B1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g4275__1591/B1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4276__6789/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g4276__6789/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4277__5927/A1 .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g4277__5927/A1 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g4277__5927/B1 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4277__5927/B1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4279__2001/A1 .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g4279__2001/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4279__2001/B1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g4279__2001/B1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4285__1122/A1 .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g4285__1122/A1 .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g4285__1122/A2 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g4285__1122/A2 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g4295/I .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g4295/I .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g4322__3717/A1 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4322__3717/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4322__3717/B1 .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g4322__3717/B1 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g4323__4599/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4323__4599/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4323__4599/B1 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g4323__4599/B1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4324__3779/A1 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g4324__3779/A1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4324__3779/B1 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g4324__3779/B1 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g4325__2007/A1 .lp_asserted_probability 0.51620
set_db -quiet pin:mkReLURNS/g4325__2007/A1 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkReLURNS/g4325__2007/B1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g4325__2007/B1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4326__1237/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4326__1237/A1 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4326__1237/B1 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g4326__1237/B1 .lp_asserted_toggle_rate 0.080192
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[10]} .orig_name {{m_c/D_OUT[10]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[10]} .single_bit_orig_name {m_c/D_OUT[10]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[10]/Q} .orig_name {m_c/D_OUT[10]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[10]/Q} .lp_asserted_probability 0.68150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[10]/Q} .lp_asserted_toggle_rate 0.065683
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[30]} .orig_name {{m_c/D_OUT[30]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[30]} .single_bit_orig_name {m_c/D_OUT[30]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[30]/Q} .orig_name {m_c/D_OUT[30]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[30]/Q} .lp_asserted_probability 0.64150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[30]/Q} .lp_asserted_toggle_rate 0.071455
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[28]} .orig_name {{m_c/D_OUT[28]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[28]} .single_bit_orig_name {m_c/D_OUT[28]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[28]/Q} .orig_name {m_c/D_OUT[28]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[28]/Q} .lp_asserted_probability 0.64150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[28]/Q} .lp_asserted_toggle_rate 0.070363
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[24]} .orig_name {{m_c/D_OUT[24]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[24]} .single_bit_orig_name {m_c/D_OUT[24]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[24]/Q} .orig_name {m_c/D_OUT[24]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[24]/Q} .lp_asserted_probability 0.00700
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[24]/Q} .lp_asserted_toggle_rate 0.002184
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[16]} .orig_name {{m_c/D_OUT[16]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[16]} .single_bit_orig_name {m_c/D_OUT[16]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[16]/Q} .orig_name {m_c/D_OUT[16]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[16]/Q} .lp_asserted_probability 0.29960
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[16]/Q} .lp_asserted_toggle_rate 0.063655
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[0]} .orig_name {{m_c/D_OUT[0]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[0]} .single_bit_orig_name {m_c/D_OUT[0]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[0]/Q} .orig_name {m_c/D_OUT[0]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[0]/Q} .lp_asserted_probability 0.33250
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[0]/Q} .lp_asserted_toggle_rate 0.068959
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[15]} .orig_name {{m_c/D_OUT[15]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[15]} .single_bit_orig_name {m_c/D_OUT[15]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[15]/Q} .orig_name {m_c/D_OUT[15]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[15]/Q} .lp_asserted_probability 0.65450
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[15]/Q} .lp_asserted_toggle_rate 0.072703
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[23]} .orig_name {{m_c/D_OUT[23]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[23]} .single_bit_orig_name {m_c/D_OUT[23]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[23]/Q} .orig_name {m_c/D_OUT[23]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[23]/Q} .lp_asserted_probability 0.68250
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[23]/Q} .lp_asserted_toggle_rate 0.063030
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[14]} .orig_name {{m_c/D_OUT[14]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[14]} .single_bit_orig_name {m_c/D_OUT[14]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[14]/Q} .orig_name {m_c/D_OUT[14]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[14]/Q} .lp_asserted_probability 0.66150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[14]/Q} .lp_asserted_toggle_rate 0.069271
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[13]} .orig_name {{m_c/D_OUT[13]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[13]} .single_bit_orig_name {m_c/D_OUT[13]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[13]/Q} .orig_name {m_c/D_OUT[13]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[13]/Q} .lp_asserted_probability 0.68350
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[13]/Q} .lp_asserted_toggle_rate 0.066463
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[27]} .orig_name {{m_c/D_OUT[27]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[27]} .single_bit_orig_name {m_c/D_OUT[27]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[27]/Q} .orig_name {m_c/D_OUT[27]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[27]/Q} .lp_asserted_probability 0.68250
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[27]/Q} .lp_asserted_toggle_rate 0.068803
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[22]} .orig_name {{m_c/D_OUT[22]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[22]} .single_bit_orig_name {m_c/D_OUT[22]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[22]/Q} .orig_name {m_c/D_OUT[22]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[22]/Q} .lp_asserted_probability 0.33650
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[22]/Q} .lp_asserted_toggle_rate 0.072859
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[12]} .orig_name {{m_c/D_OUT[12]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[12]} .single_bit_orig_name {m_c/D_OUT[12]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[12]/Q} .orig_name {m_c/D_OUT[12]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[12]/Q} .lp_asserted_probability 0.68550
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[12]/Q} .lp_asserted_toggle_rate 0.069739
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[11]} .orig_name {{m_c/D_OUT[11]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[11]} .single_bit_orig_name {m_c/D_OUT[11]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[11]/Q} .orig_name {m_c/D_OUT[11]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[11]/Q} .lp_asserted_probability 0.68250
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[11]/Q} .lp_asserted_toggle_rate 0.067867
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[21]} .orig_name {{m_c/D_OUT[21]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[21]} .single_bit_orig_name {m_c/D_OUT[21]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[21]/Q} .orig_name {m_c/D_OUT[21]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[21]/Q} .lp_asserted_probability 0.34450
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[21]/Q} .lp_asserted_toggle_rate 0.072547
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[31]} .orig_name {{m_c/D_OUT[31]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[31]} .single_bit_orig_name {m_c/D_OUT[31]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[31]/Q} .orig_name {m_c/D_OUT[31]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[31]/Q} .lp_asserted_probability 0.34350
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[31]/Q} .lp_asserted_toggle_rate 0.073484
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[1]} .orig_name {{m_c/D_OUT[1]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[1]} .single_bit_orig_name {m_c/D_OUT[1]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[1]/Q} .orig_name {m_c/D_OUT[1]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[1]/Q} .lp_asserted_probability 0.32650
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[1]/Q} .lp_asserted_toggle_rate 0.067555
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[29]} .orig_name {{m_c/D_OUT[29]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[29]} .single_bit_orig_name {m_c/D_OUT[29]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[29]/Q} .orig_name {m_c/D_OUT[29]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[29]/Q} .lp_asserted_probability 0.66750
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[29]/Q} .lp_asserted_toggle_rate 0.068023
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[26]} .orig_name {{m_c/D_OUT[26]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[26]} .single_bit_orig_name {m_c/D_OUT[26]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[26]/Q} .orig_name {m_c/D_OUT[26]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[26]/Q} .lp_asserted_probability 0.66150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[26]/Q} .lp_asserted_toggle_rate 0.073015
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[20]} .orig_name {{m_c/D_OUT[20]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[20]} .single_bit_orig_name {m_c/D_OUT[20]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[20]/Q} .orig_name {m_c/D_OUT[20]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[20]/Q} .lp_asserted_probability 0.31550
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[20]/Q} .lp_asserted_toggle_rate 0.064435
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[8]} .orig_name {{m_c/D_OUT[8]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[8]} .single_bit_orig_name {m_c/D_OUT[8]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[8]/Q} .orig_name {m_c/D_OUT[8]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[8]/Q} .lp_asserted_probability 0.00200
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[8]/Q} .lp_asserted_toggle_rate 0.000624
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[7]} .orig_name {{m_c/D_OUT[7]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[7]} .single_bit_orig_name {m_c/D_OUT[7]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[7]/Q} .orig_name {m_c/D_OUT[7]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[7]/Q} .lp_asserted_probability 0.67650
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[7]/Q} .lp_asserted_toggle_rate 0.073796
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[19]} .orig_name {{m_c/D_OUT[19]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[19]} .single_bit_orig_name {m_c/D_OUT[19]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[19]/Q} .orig_name {m_c/D_OUT[19]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[19]/Q} .lp_asserted_probability 0.34350
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[19]/Q} .lp_asserted_toggle_rate 0.065995
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[6]} .orig_name {{m_c/D_OUT[6]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[6]} .single_bit_orig_name {m_c/D_OUT[6]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[6]/Q} .orig_name {m_c/D_OUT[6]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[6]/Q} .lp_asserted_probability 0.33950
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[6]/Q} .lp_asserted_toggle_rate 0.072391
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[5]} .orig_name {{m_c/D_OUT[5]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[5]} .single_bit_orig_name {m_c/D_OUT[5]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[5]/Q} .orig_name {m_c/D_OUT[5]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[5]/Q} .lp_asserted_probability 0.33850
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[5]/Q} .lp_asserted_toggle_rate 0.069895
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[25]} .orig_name {{m_c/D_OUT[25]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[25]} .single_bit_orig_name {m_c/D_OUT[25]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[25]/Q} .orig_name {m_c/D_OUT[25]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[25]/Q} .lp_asserted_probability 0.66050
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[25]/Q} .lp_asserted_toggle_rate 0.068647
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[18]} .orig_name {{m_c/D_OUT[18]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[18]} .single_bit_orig_name {m_c/D_OUT[18]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[18]/Q} .orig_name {m_c/D_OUT[18]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[18]/Q} .lp_asserted_probability 0.34650
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[18]/Q} .lp_asserted_toggle_rate 0.072235
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[4]} .orig_name {{m_c/D_OUT[4]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[4]} .single_bit_orig_name {m_c/D_OUT[4]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[4]/Q} .orig_name {m_c/D_OUT[4]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[4]/Q} .lp_asserted_probability 0.34850
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[4]/Q} .lp_asserted_toggle_rate 0.071143
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[3]} .orig_name {{m_c/D_OUT[3]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[3]} .single_bit_orig_name {m_c/D_OUT[3]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[3]/Q} .orig_name {m_c/D_OUT[3]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[3]/Q} .lp_asserted_probability 0.34550
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[3]/Q} .lp_asserted_toggle_rate 0.071143
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[17]} .orig_name {{m_c/D_OUT[17]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[17]} .single_bit_orig_name {m_c/D_OUT[17]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[17]/Q} .orig_name {m_c/D_OUT[17]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[17]/Q} .lp_asserted_probability 0.31550
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[17]/Q} .lp_asserted_toggle_rate 0.070675
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[2]} .orig_name {{m_c/D_OUT[2]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[2]} .single_bit_orig_name {m_c/D_OUT[2]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[2]/Q} .orig_name {m_c/D_OUT[2]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[2]/Q} .lp_asserted_probability 0.33950
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[2]/Q} .lp_asserted_toggle_rate 0.070519
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[9]} .orig_name {{m_c/D_OUT[9]}}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[9]} .single_bit_orig_name {m_c/D_OUT[9]}
set_db -quiet {inst:mkReLURNS/m_c_D_OUT_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[9]/Q} .orig_name {m_c/D_OUT[9]}
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[9]/Q} .lp_asserted_probability 0.66150
set_db -quiet {pin:mkReLURNS/m_c_D_OUT_reg[9]/Q} .lp_asserted_toggle_rate 0.067555
set_db -quiet pin:mkReLURNS/g2294__1297/A1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g2294__1297/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g2295__2006/A1 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g2295__2006/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g2296__2833/A1 .lp_asserted_probability 0.48530
set_db -quiet pin:mkReLURNS/g2296__2833/A1 .lp_asserted_toggle_rate 0.078008
set_db -quiet pin:mkReLURNS/g2297__7547/A1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g2297__7547/A1 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g2298__7765/A1 .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g2298__7765/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g2299__9867/A1 .lp_asserted_probability 0.48230
set_db -quiet pin:mkReLURNS/g2299__9867/A1 .lp_asserted_toggle_rate 0.075980
set_db -quiet pin:mkReLURNS/g2300__3377/A1 .lp_asserted_probability 0.50920
set_db -quiet pin:mkReLURNS/g2300__3377/A1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2301__9719/A1 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g2301__9719/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g2302__1591/A1 .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g2302__1591/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g2303__6789/A1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g2303__6789/A1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g2304__5927/A1 .lp_asserted_probability 0.52370
set_db -quiet pin:mkReLURNS/g2304__5927/A1 .lp_asserted_toggle_rate 0.081908
set_db -quiet pin:mkReLURNS/g2305__2001/A1 .lp_asserted_probability 0.50620
set_db -quiet pin:mkReLURNS/g2305__2001/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g2306__1122/A1 .lp_asserted_probability 0.00400
set_db -quiet pin:mkReLURNS/g2306__1122/A1 .lp_asserted_toggle_rate 0.001248
set_db -quiet pin:mkReLURNS/g2307__2005/A1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g2307__2005/A1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g2308__9771/A1 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g2308__9771/A1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g2309__3457/A1 .lp_asserted_probability 0.52170
set_db -quiet pin:mkReLURNS/g2309__3457/A1 .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g2310__1279/A1 .lp_asserted_probability 0.48030
set_db -quiet pin:mkReLURNS/g2310__1279/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2311__6179/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g2311__6179/A1 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g2312__7837/A1 .lp_asserted_probability 0.51720
set_db -quiet pin:mkReLURNS/g2312__7837/A1 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkReLURNS/g2313__7557/A1 .lp_asserted_probability 0.47330
set_db -quiet pin:mkReLURNS/g2313__7557/A1 .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g2314__7654/A1 .lp_asserted_probability 0.52220
set_db -quiet pin:mkReLURNS/g2314__7654/A1 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkReLURNS/g2315__8867/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g2315__8867/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g2316__1377/A1 .lp_asserted_probability 0.49680
set_db -quiet pin:mkReLURNS/g2316__1377/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g2317__3717/A1 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g2317__3717/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g2318__4599/A1 .lp_asserted_probability 0.01100
set_db -quiet pin:mkReLURNS/g2318__4599/A1 .lp_asserted_toggle_rate 0.003432
set_db -quiet pin:mkReLURNS/g2319__3779/A1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g2319__3779/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4327__2007/A1 .lp_asserted_probability 0.46430
set_db -quiet pin:mkReLURNS/g4327__2007/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4328__1237/A1 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4328__1237/A1 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g2322__1297/A1 .lp_asserted_probability 0.51620
set_db -quiet pin:mkReLURNS/g2322__1297/A1 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkReLURNS/g2323__2006/A1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g2323__2006/A1 .lp_asserted_toggle_rate 0.077540
set_db -quiet pin:mkReLURNS/g4329__2833/A1 .lp_asserted_probability 0.50420
set_db -quiet pin:mkReLURNS/g4329__2833/A1 .lp_asserted_toggle_rate 0.080504
set_db -quiet pin:mkReLURNS/g4330__7547/A1 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4330__7547/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4474__2833/A2 .lp_asserted_probability 0.51620
set_db -quiet pin:mkReLURNS/g4474__2833/A2 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkReLURNS/g4484__1122/A2 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4484__1122/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4484__1122/B2 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4484__1122/B2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4485__2005/A2 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4485__2005/A2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4485__2005/B2 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4485__2005/B2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4491__7837/A2 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g4491__7837/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4495__8867/A2 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4495__8867/A2 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4495__8867/B2 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4495__8867/B2 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4496__1377/A1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g4496__1377/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4498__4599/A1 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g4498__4599/A1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4499__3779/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4499__3779/A1 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4500__2007/A2 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g4500__2007/A2 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4508__7547/A2 .lp_asserted_probability 0.47330
set_db -quiet pin:mkReLURNS/g4508__7547/A2 .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g4509__7765/A2 .lp_asserted_probability 0.47330
set_db -quiet pin:mkReLURNS/g4509__7765/A2 .lp_asserted_toggle_rate 0.079568
set_db -quiet pin:mkReLURNS/g4513__3377/A1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g4513__3377/A1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4513__3377/A2 .lp_asserted_probability 0.51620
set_db -quiet pin:mkReLURNS/g4513__3377/A2 .lp_asserted_toggle_rate 0.077696
set_db -quiet pin:mkReLURNS/g4513__3377/A3 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g4513__3377/A3 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4515__1591/A1 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4515__1591/A1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4515__1591/A2 .lp_asserted_probability 0.48880
set_db -quiet pin:mkReLURNS/g4515__1591/A2 .lp_asserted_toggle_rate 0.079256
set_db -quiet pin:mkReLURNS/g4552__2006/B1 .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/g4552__2006/B1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4553__2833/B1 .lp_asserted_probability 0.48830
set_db -quiet pin:mkReLURNS/g4553__2833/B1 .lp_asserted_toggle_rate 0.075200
set_db -quiet pin:mkReLURNS/g4554__7547/B1 .lp_asserted_probability 0.51470
set_db -quiet pin:mkReLURNS/g4554__7547/B1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4554__7547/B2 .lp_asserted_probability 0.50120
set_db -quiet pin:mkReLURNS/g4554__7547/B2 .lp_asserted_toggle_rate 0.078320
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[17]} .orig_name {{m_a/D_OUT[17]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[17]} .single_bit_orig_name {m_a/D_OUT[17]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[17]/D} .lp_asserted_probability 0.47630
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[17]/D} .lp_asserted_toggle_rate 0.079412
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[17]/Q} .orig_name {m_a/D_OUT[17]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[17]/Q} .lp_asserted_probability 0.47580
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[17]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[18]} .orig_name {{m_a/D_OUT[18]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[18]} .single_bit_orig_name {m_a/D_OUT[18]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[18]/D} .lp_asserted_probability 0.52270
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[18]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[18]/Q} .orig_name {m_a/D_OUT[18]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[18]/Q} .lp_asserted_probability 0.52220
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[18]/Q} .lp_asserted_toggle_rate 0.078476
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[19]} .orig_name {{m_a/D_OUT[19]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[19]} .single_bit_orig_name {m_a/D_OUT[19]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[19]/D} .lp_asserted_probability 0.51770
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[19]/D} .lp_asserted_toggle_rate 0.077228
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[19]/Q} .orig_name {m_a/D_OUT[19]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[19]/Q} .lp_asserted_probability 0.51720
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[19]/Q} .lp_asserted_toggle_rate 0.076916
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[20]} .orig_name {{m_a/D_OUT[20]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[20]} .single_bit_orig_name {m_a/D_OUT[20]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[20]/D} .lp_asserted_probability 0.49730
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[20]/D} .lp_asserted_toggle_rate 0.079100
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[20]/Q} .orig_name {m_a/D_OUT[20]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[20]/Q} .lp_asserted_probability 0.49680
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[20]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[21]} .orig_name {{m_a/D_OUT[21]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[21]} .single_bit_orig_name {m_a/D_OUT[21]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[21]/D} .lp_asserted_probability 0.50820
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[21]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[21]/Q} .orig_name {m_a/D_OUT[21]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[21]/Q} .lp_asserted_probability 0.50770
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[21]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[22]} .orig_name {{m_a/D_OUT[22]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[22]} .single_bit_orig_name {m_a/D_OUT[22]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[22]/D} .lp_asserted_probability 0.50420
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[22]/D} .lp_asserted_toggle_rate 0.079100
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[22]/Q} .orig_name {m_a/D_OUT[22]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[22]/Q} .lp_asserted_probability 0.50370
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[22]/Q} .lp_asserted_toggle_rate 0.078632
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[23]} .orig_name {{m_a/D_OUT[23]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[23]} .single_bit_orig_name {m_a/D_OUT[23]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[23]/D} .lp_asserted_probability 0.52170
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[23]/D} .lp_asserted_toggle_rate 0.075668
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[23]/Q} .orig_name {m_a/D_OUT[23]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[23]/Q} .lp_asserted_probability 0.52070
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[23]/Q} .lp_asserted_toggle_rate 0.075512
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[24]} .orig_name {{m_a/D_OUT[24]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[24]} .single_bit_orig_name {m_a/D_OUT[24]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[24]/D} .lp_asserted_probability 0.01100
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[24]/D} .lp_asserted_toggle_rate 0.003432
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[24]/Q} .orig_name {m_a/D_OUT[24]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[24]/Q} .lp_asserted_probability 0.01100
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[24]/Q} .lp_asserted_toggle_rate 0.003432
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[25]} .orig_name {{m_a/D_OUT[25]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[25]} .single_bit_orig_name {m_a/D_OUT[25]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[25]/D} .lp_asserted_probability 0.50370
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[25]/D} .lp_asserted_toggle_rate 0.082220
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[25]/Q} .orig_name {m_a/D_OUT[25]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[25]/Q} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[25]/Q} .lp_asserted_toggle_rate 0.082064
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[26]} .orig_name {{m_a/D_OUT[26]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[26]} .single_bit_orig_name {m_a/D_OUT[26]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[26]/D} .lp_asserted_probability 0.50320
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[26]/D} .lp_asserted_toggle_rate 0.080504
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[26]/Q} .orig_name {m_a/D_OUT[26]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[26]/Q} .lp_asserted_probability 0.50270
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[26]/Q} .lp_asserted_toggle_rate 0.080192
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[27]} .orig_name {{m_a/D_OUT[27]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[27]} .single_bit_orig_name {m_a/D_OUT[27]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[27]/D} .lp_asserted_probability 0.51320
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[27]/D} .lp_asserted_toggle_rate 0.078320
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[27]/Q} .orig_name {m_a/D_OUT[27]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[27]/Q} .lp_asserted_probability 0.51320
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[27]/Q} .lp_asserted_toggle_rate 0.078320
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[28]} .orig_name {{m_a/D_OUT[28]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[28]} .single_bit_orig_name {m_a/D_OUT[28]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[28]/D} .lp_asserted_probability 0.46430
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[28]/D} .lp_asserted_toggle_rate 0.078944
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[28]/Q} .orig_name {m_a/D_OUT[28]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[28]/Q} .lp_asserted_probability 0.46430
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[28]/Q} .lp_asserted_toggle_rate 0.078944
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[29]} .orig_name {{m_a/D_OUT[29]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[29]} .single_bit_orig_name {m_a/D_OUT[29]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[29]/D} .lp_asserted_probability 0.49430
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[29]/D} .lp_asserted_toggle_rate 0.078008
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[29]/Q} .orig_name {m_a/D_OUT[29]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[29]/Q} .lp_asserted_probability 0.49430
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[29]/Q} .lp_asserted_toggle_rate 0.077852
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[30]} .orig_name {{m_a/D_OUT[30]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[30]} .single_bit_orig_name {m_a/D_OUT[30]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[30]/D} .lp_asserted_probability 0.47630
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[30]/D} .lp_asserted_toggle_rate 0.077696
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[30]/Q} .orig_name {m_a/D_OUT[30]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[30]/Q} .lp_asserted_probability 0.47580
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[30]/Q} .lp_asserted_toggle_rate 0.077384
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[31]} .orig_name {{m_a/D_OUT[31]}}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[31]} .single_bit_orig_name {m_a/D_OUT[31]}
set_db -quiet {inst:mkReLURNS/m_a_D_OUT_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[31]/D} .lp_asserted_probability 0.52220
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[31]/D} .lp_asserted_toggle_rate 0.084873
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[31]/Q} .orig_name {m_a/D_OUT[31]}
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[31]/Q} .lp_asserted_probability 0.52170
set_db -quiet {pin:mkReLURNS/m_a_D_OUT_reg[31]/Q} .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g4744__2833/A2 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g4744__2833/A2 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4745__7547/A2 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4745__7547/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4745__7547/B2 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4745__7547/B2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4746__7765/A2 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g4746__7765/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4747__9867/A2 .lp_asserted_probability 0.52220
set_db -quiet pin:mkReLURNS/g4747__9867/A2 .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkReLURNS/g4748__3377/A2 .lp_asserted_probability 0.51720
set_db -quiet pin:mkReLURNS/g4748__3377/A2 .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkReLURNS/g4749__9719/A2 .lp_asserted_probability 0.49680
set_db -quiet pin:mkReLURNS/g4749__9719/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4750__1591/A2 .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g4750__1591/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4759__3457/A2 .lp_asserted_probability 0.01100
set_db -quiet pin:mkReLURNS/g4759__3457/A2 .lp_asserted_toggle_rate 0.003432
set_db -quiet pin:mkReLURNS/g4764__7557/A .lp_asserted_probability 0.01100
set_db -quiet pin:mkReLURNS/g4764__7557/A .lp_asserted_toggle_rate 0.003432
set_db -quiet pin:mkReLURNS/g4768__3717/A2 .lp_asserted_probability 0.46430
set_db -quiet pin:mkReLURNS/g4768__3717/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4768__3717/B2 .lp_asserted_probability 0.46430
set_db -quiet pin:mkReLURNS/g4768__3717/B2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4770__3779/A1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g4770__3779/A1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4771__2007/B1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g4771__2007/B1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g4773__1237/A2 .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g4773__1237/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4773__1237/B2 .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g4773__1237/B2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4775__2006/A1 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g4775__2006/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4776__2833/B1 .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g4776__2833/B1 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4778__7765/A2 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g4778__7765/A2 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4779__9867/A .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g4779__9867/A .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4780__3377/A2 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4780__3377/A2 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g4780__3377/B2 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4780__3377/B2 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g4781__9719/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4781__9719/A2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4781__9719/B2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4781__9719/B2 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4783__6789/B1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4783__6789/B1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4785__2001/A .lp_asserted_probability 0.49680
set_db -quiet pin:mkReLURNS/g4785__2001/A .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g4786__1122/A1 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g4786__1122/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g4787__2005/A1 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g4787__2005/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g4789__3457/A2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4789__3457/A2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g4789__3457/B2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4789__3457/B2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g4795__7837/A .lp_asserted_probability 0.51720
set_db -quiet pin:mkReLURNS/g4795__7837/A .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkReLURNS/g4796__7557/A2 .lp_asserted_probability 0.52170
set_db -quiet pin:mkReLURNS/g4796__7557/A2 .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g4797__7654/A2 .lp_asserted_probability 0.52170
set_db -quiet pin:mkReLURNS/g4797__7654/A2 .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g4798__8867/A .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4798__8867/A .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4798__8867/B .lp_asserted_probability 0.52220
set_db -quiet pin:mkReLURNS/g4798__8867/B .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkReLURNS/g4800__3717/B1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4800__3717/B1 .lp_asserted_toggle_rate 0.080192
set_db -quiet pin:mkReLURNS/g4800__3717/B2 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4800__3717/B2 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g4801__4599/A1 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g4801__4599/A1 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g4801__4599/A2 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g4801__4599/A2 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g4802__3779/A1 .lp_asserted_probability 0.46430
set_db -quiet pin:mkReLURNS/g4802__3779/A1 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g4802__3779/A2 .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g4802__3779/A2 .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g4830__1237/B1 .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g4830__1237/B1 .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g3312__6789/A1 .lp_asserted_probability 0.01100
set_db -quiet pin:mkReLURNS/g3312__6789/A1 .lp_asserted_toggle_rate 0.003432
set_db -quiet pin:mkReLURNS/g3313__5927/B .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g3313__5927/B .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g3314__2001/B .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g3314__2001/B .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3315__1122/B .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g3315__1122/B .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3316__2005/B .lp_asserted_probability 0.49680
set_db -quiet pin:mkReLURNS/g3316__2005/B .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3317__9771/B .lp_asserted_probability 0.51720
set_db -quiet pin:mkReLURNS/g3317__9771/B .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkReLURNS/g3318__3457/B .lp_asserted_probability 0.52220
set_db -quiet pin:mkReLURNS/g3318__3457/B .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkReLURNS/g3319__1279/A .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g3319__1279/A .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g3352__2005/A .lp_asserted_probability 0.46430
set_db -quiet pin:mkReLURNS/g3352__2005/A .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g3354__3457/A .lp_asserted_probability 0.51320
set_db -quiet pin:mkReLURNS/g3354__3457/A .lp_asserted_toggle_rate 0.078320
set_db -quiet pin:mkReLURNS/g3356__6179/A .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/g3356__6179/A .lp_asserted_toggle_rate 0.082064
set_db -quiet pin:mkReLURNS/g3358__7557/A2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkReLURNS/g3358__7557/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g3359__7654/A2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkReLURNS/g3359__7654/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g3366__2007/A1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkReLURNS/g3366__2007/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g3366__2007/B1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkReLURNS/g3366__2007/B1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g3367__1237/A1 .lp_asserted_probability 0.52170
set_db -quiet pin:mkReLURNS/g3367__1237/A1 .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g3367__1237/B1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g3367__1237/B1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g3368__1297/A1 .lp_asserted_probability 0.01100
set_db -quiet pin:mkReLURNS/g3368__1297/A1 .lp_asserted_toggle_rate 0.003432
set_db -quiet pin:mkReLURNS/g3368__1297/A2 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g3368__1297/A2 .lp_asserted_toggle_rate 0.078944
set_db -quiet pin:mkReLURNS/g3369__2006/A1 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g3369__2006/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3369__2006/B1 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g3369__2006/B1 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g3370__2833/A1 .lp_asserted_probability 0.52170
set_db -quiet pin:mkReLURNS/g3370__2833/A1 .lp_asserted_toggle_rate 0.084561
set_db -quiet pin:mkReLURNS/g3370__2833/B1 .lp_asserted_probability 0.52070
set_db -quiet pin:mkReLURNS/g3370__2833/B1 .lp_asserted_toggle_rate 0.075512
set_db -quiet pin:mkReLURNS/g3371__7547/A1 .lp_asserted_probability 0.50370
set_db -quiet pin:mkReLURNS/g3371__7547/A1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3371__7547/B1 .lp_asserted_probability 0.47580
set_db -quiet pin:mkReLURNS/g3371__7547/B1 .lp_asserted_toggle_rate 0.077384
set_db -quiet pin:mkReLURNS/g3372__7765/A1 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g3372__7765/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g3372__7765/B1 .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g3372__7765/B1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3373__9867/A1 .lp_asserted_probability 0.49430
set_db -quiet pin:mkReLURNS/g3373__9867/A1 .lp_asserted_toggle_rate 0.077852
set_db -quiet pin:mkReLURNS/g3373__9867/B1 .lp_asserted_probability 0.50770
set_db -quiet pin:mkReLURNS/g3373__9867/B1 .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3376/I .lp_asserted_probability 0.52220
set_db -quiet pin:mkReLURNS/g3376/I .lp_asserted_toggle_rate 0.078476
set_db -quiet pin:mkReLURNS/g3377/I .lp_asserted_probability 0.49680
set_db -quiet pin:mkReLURNS/g3377/I .lp_asserted_toggle_rate 0.078632
set_db -quiet pin:mkReLURNS/g3378/I .lp_asserted_probability 0.51720
set_db -quiet pin:mkReLURNS/g3378/I .lp_asserted_toggle_rate 0.076916
set_db -quiet pin:mkReLURNS/drc_bufs3384/I .lp_asserted_probability 0.50270
set_db -quiet pin:mkReLURNS/drc_bufs3384/I .lp_asserted_toggle_rate 0.080192
set_db -quiet inst:mkReLURNS/m_a_empty_reg_reg .orig_name m_a/empty_reg
set_db -quiet inst:mkReLURNS/m_a_empty_reg_reg .orig_hdl_instantiated false
set_db -quiet inst:mkReLURNS/m_a_empty_reg_reg .single_bit_orig_name m_a/empty_reg
set_db -quiet inst:mkReLURNS/m_a_empty_reg_reg .gint_phase_inversion false
set_db -quiet pin:mkReLURNS/m_a_empty_reg_reg/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/m_a_empty_reg_reg/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet pin:mkReLURNS/m_a_empty_reg_reg/Q .orig_name m_a/empty_reg
set_db -quiet pin:mkReLURNS/m_a_empty_reg_reg/Q .lp_asserted_probability 0.99700
set_db -quiet pin:mkReLURNS/m_a_empty_reg_reg/Q .lp_asserted_toggle_rate 0.000156
set_db -quiet inst:mkReLURNS/m_c_empty_reg_reg .orig_name m_c/empty_reg
set_db -quiet inst:mkReLURNS/m_c_empty_reg_reg .orig_hdl_instantiated false
set_db -quiet inst:mkReLURNS/m_c_empty_reg_reg .single_bit_orig_name m_c/empty_reg
set_db -quiet inst:mkReLURNS/m_c_empty_reg_reg .gint_phase_inversion false
set_db -quiet pin:mkReLURNS/m_c_empty_reg_reg/CP .lp_asserted_probability 0.50020
set_db -quiet pin:mkReLURNS/m_c_empty_reg_reg/CP .lp_asserted_toggle_rate 0.312656
set_db -quiet pin:mkReLURNS/m_c_empty_reg_reg/Q .orig_name m_c/empty_reg
set_db -quiet pin:mkReLURNS/m_c_empty_reg_reg/Q .lp_asserted_probability 0.99600
set_db -quiet pin:mkReLURNS/m_c_empty_reg_reg/Q .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2167__9719/B2 .lp_asserted_probability 0.99600
set_db -quiet pin:mkReLURNS/g2167__9719/B2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2168__1591/B2 .lp_asserted_probability 0.99700
set_db -quiet pin:mkReLURNS/g2168__1591/B2 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2169__6789/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkReLURNS/g2169__6789/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2169__6789/B1 .lp_asserted_probability 0.99600
set_db -quiet pin:mkReLURNS/g2169__6789/B1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2170__5927/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkReLURNS/g2170__5927/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2170__5927/B1 .lp_asserted_probability 0.99800
set_db -quiet pin:mkReLURNS/g2170__5927/B1 .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkReLURNS/g2171__2001/A1 .lp_asserted_probability 0.99900
set_db -quiet pin:mkReLURNS/g2171__2001/A1 .lp_asserted_toggle_rate 0.000156
set_db -quiet pin:mkReLURNS/g2172__1122/A1 .lp_asserted_probability 0.99800
set_db -quiet pin:mkReLURNS/g2172__1122/A1 .lp_asserted_toggle_rate 0.000780
set_db -quiet pin:mkReLURNS/g2172__1122/A2 .lp_asserted_probability 0.99900
set_db -quiet pin:mkReLURNS/g2172__1122/A2 .lp_asserted_toggle_rate 0.000156
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 16.22-s033_1
## Written on 11:46:42 10-Dec 2017
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
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 354125f7}
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

