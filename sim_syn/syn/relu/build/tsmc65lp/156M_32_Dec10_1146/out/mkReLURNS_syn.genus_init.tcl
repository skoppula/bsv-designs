#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/10/2017 11:46:42
#
#####################################################################


read_mmmc build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.mmmc.tcl

read_physical -lef {}

read_netlist build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.v

init_design -skip_sdc_read
