#################################################################################
#
# Created by Genus(TM) Synthesis Solution 16.22-s033_1 on Sun Dec 10 11:46:42 -0500 2017
#
#################################################################################

## library_sets
create_library_set -name default_emulate_libset_max \
    -timing { /u/tsmc/CRN65LP/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn65lp_200a/tcbn65lpwc.lib }

## opcond
create_opcond -name default_emulate_opcond -process 1.0 -voltage 1.08 -temperature 125.0

## timing_condition
create_timing_condition -name default_emulate_timing_cond_max \
    -opcond default_emulate_opcond \
    -library_sets { default_emulate_libset_max }

## rc_corner
create_rc_corner -name default_emulate_rc_corner \
    -temperature 125.0 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name default_emulate_delay_corner \
    -early_timing_condition { default_emulate_timing_cond_max } \
    -late_timing_condition { default_emulate_timing_cond_max } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner

## constraint_mode
create_constraint_mode -name default_emulate_constraint_mode \
    -sdc_files { build/tsmc65lp/156M_32_Dec10_1146/out//mkReLURNS_syn.default_emulate_constraint_mode.sdc }

## analysis_view
create_analysis_view -name default_emulate_view \
    -constraint_mode default_emulate_constraint_mode \
    -delay_corner default_emulate_delay_corner

## set_analysis_view
set_analysis_view -setup { default_emulate_view } \
                  -hold { default_emulate_view }
