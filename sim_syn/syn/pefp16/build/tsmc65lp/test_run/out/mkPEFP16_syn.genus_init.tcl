#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/11/2017 21:02:53
#
#####################################################################


read_mmmc build/tsmc65lp/test_run/out/mkPEFP16_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/test_run/out/mkPEFP16_syn.v

init_design -skip_sdc_read
