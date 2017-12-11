#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/08/2017 19:11:52
#
#####################################################################


read_mmmc build/tsmc65lp/test_run/out/mkAdder32_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/test_run/out/mkAdder32_syn.v

init_design -skip_sdc_read
