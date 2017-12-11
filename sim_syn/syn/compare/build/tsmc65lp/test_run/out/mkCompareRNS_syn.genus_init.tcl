#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/09/2017 17:21:11
#
#####################################################################


read_mmmc build/tsmc65lp/test_run/out/mkCompareRNS_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/test_run/out/mkCompareRNS_syn.v

init_design -skip_sdc_read
