#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/11/2017 21:04:34
#
#####################################################################


read_mmmc build/tsmc65lp/test_run/out/mkPE32_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/test_run/out/mkPE32_syn.v

init_design -skip_sdc_read
