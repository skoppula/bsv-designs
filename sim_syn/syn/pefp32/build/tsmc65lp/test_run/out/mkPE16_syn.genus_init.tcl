#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/11/2017 16:41:20
#
#####################################################################


read_mmmc build/tsmc65lp/test_run/out/mkPE16_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/test_run/out/mkPE16_syn.v

init_design -skip_sdc_read
