#####################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution 16.22-s033_1
#   on 12/10/2017 11:46:42
#
# This file can only be run in Genus Common UI mode.
#
#####################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version 16.22-s033_1


# Remove Existing Design
###########################################################
if {[::legacy::find -design design:mkReLURNS] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj design:mkReLURNS
}


# Source INIT Setup file
########################################################
source build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.genus_init.tcl
read_metric -id current build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.metrics.json

source build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.g
read_tcf build/tsmc65lp/156M_32_Dec10_1146/out/mkReLURNS_syn.tcf
puts "\n** Restoration Completed **\n"


# Data Integrity Check
###########################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "16.22-s033_1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: 16.22-s033_1  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack design:mkReLURNS]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "109.5"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: 109.5,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
# tns
set _tns_ [::legacy::get_attribute tns design:mkReLURNS]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area design:mkReLURNS]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "3065"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 3065,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area design:mkReLURNS]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 0,  current net area: $_net_area_"
}
unset _net_area_
