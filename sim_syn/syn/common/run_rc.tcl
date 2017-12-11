####################################################################
## Setup Logging and Output Folders
####################################################################
set DATE [clock format [clock seconds] -format "%b%d_%H%M"]

if {!$save} {
  set BASE_PATH build/${libname}/test_run
  file delete -force $BASE_PATH
} else {
  if {$basename_prefix != ""} {
    set BASE_PATH build/${libname}/${basename_prefix}_${DATE}
  } else {
    set BASE_PATH build/${libname}/${DATE}
  }
}

if {$backup_input} {
  set INPUTS_PATH ${BASE_PATH}/in
  file mkdir ${INPUTS_PATH}
}

set OUTPUTS_PATH ${BASE_PATH}/out
set REPORTS_PATH ${BASE_PATH}/rpt
set LOG_PATH ${BASE_PATH}/logs
set VERIFICATION_PATH ${BASE_PATH}/fv

file mkdir ${OUTPUTS_PATH}
file mkdir ${REPORTS_PATH}
file mkdir ${LOG_PATH}
file mkdir ${VERIFICATION_PATH}

file delete current
file link -symbolic current $BASE_PATH

####################################################################
## Global Synthesis Settings
####################################################################

##Uncomment and specify machine names to enable super-threading.
##set_db super_thread_servers {<machine names>}

set_db hdl_error_on_blackbox true
##Default undriven/unconnected setting is 'none'.
##set_db hdl_unconnected_input_port_value 0 | 1 | x | none
##set_db hdl_undriven_output_port_value   0 | 1 | x | none
##set_db hdl_undriven_signal_value        0 | 1 | x | none

##set_db wireload_mode <value>
set_db information_level 9

##generates <signal>_reg[<bit_width>] format
#set_db hdl_array_naming_style %s\[%d\]

## Turn on TNS, affects global and incr opto
#set_db tns_opto true

set_db syn_generic_effort high
set_db syn_map_effort high

if {$do_power_opt} {
  if {$do_clock_gating} {
    set_db lp_insert_clock_gating true
  }
  # set_db lp_insert_operand_isolation true
  set_db lp_power_analysis_effort high
  # set_db hdl_track_filename_row_col true
}

# suspend

####################################################################
## Load Inputs
####################################################################

set_db init_hdl_search_path [ concat $rtl_path ]
read_hdl -sv $rtl_files

# suspend

## Load Libraries
include technology.tcl

# suspend

elaborate $design
check_design -unresolved

set_db current_design .verification_directory $VERIFICATION_PATH

if {$do_adv_opt} {
  set_db current_design .retime true
}

if {[info exists wireload_model]} {
    set_db current_design .force_wireload $wireload_model
}

if {$do_power_opt && $do_clock_gating} {
  set_db current_design .lp_clock_gating_extract_common_enable true
}

# suspend

####################################################################
## Constraints Setup
####################################################################

read_sdc $sdc_file
report timing -lint

# suspend

####################################################################
## Power Optimization
####################################################################

if {$do_power_opt} {
  #set_db max_leakage_power 0.0 "/designs/$design"
  #set_db lp_power_optimization_weight <value from 0 to 1> "/designs/$DESIGN"

  set_db current_design .max_dynamic_power 0.0

  if {$use_tcf} {
    read_tcf -tcf_instance $rtl_top_inst $activity_filename
  }

  if {$use_vcd} {
    read_vcd -static -vcd_scope $rtl_top_inst $activity_filename
  }

  if {$use_saif} {
    read_saif -instance $rtl_top_inst $activity_filename
  }
}

# suspend

####################################################################
## Synthesize
####################################################################

syn_generic
syn_map

## ungroup -threshold <value>

# if {$do_adv_opt} {
#   syn_opt
# }

# suspend

####################################################################
## Write INNOVUS input (verilog, SDC, config, etc.)
####################################################################

report area > $REPORTS_PATH/area.rpt
report timing > $REPORTS_PATH/timing.rpt
report power > $REPORTS_PATH/power.rpt
report clock_gating > $REPORTS_PATH/clockgating.rpt
report gates > $REPORTS_PATH/gates.rpt
report gates -power > $REPORTS_PATH/gates_power.rpt
report datapath > $REPORTS_PATH/datapath.rpt

report messages > $REPORTS_PATH/messages.rpt
report qor > $REPORTS_PATH/qor.rpt


write_design -basename ${OUTPUTS_PATH}/${design}_syn
write_hdl  > ${OUTPUTS_PATH}/${design}_syn.v
write_sdc > ${OUTPUTS_PATH}/${design}_syn.sdc
write_sdf -edges check_edge > ${OUTPUTS_PATH}/${design}_syn.sdf
write_db ${design} -to_file ${OUTPUTS_PATH}/${design}_syn.db

file copy [get_db stdout_log] ${LOG_PATH}/
file delete [get_db stdout_log]
file copy [get_db command_log] ${LOG_PATH}/
file delete [get_db command_log]

report qor
