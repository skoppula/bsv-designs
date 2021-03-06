# gui_show
set_db source_verbose_info false
set_db source_verbose true

set design mkCompareRNS
set design_folder compare
set rtl_top_inst dut
set libname tsmc65lp

set do_power_opt true
set do_clock_gating true
set do_adv_opt false

# This prevents creation of separate folders per run
set save false
set basename_prefix "156M_32"
set backup_input false

set project_base /homes/mrhamid/6888_prj/6888_Project/sim_syn

set use_tcf false
set use_vcd false
set use_saif true
set activity_filename $project_base/bsv/$design_folder/${design_folder}.saif

set rtl_path [ list \
    ${project_base}/bsv/$design_folder/vlog \
    $::env(BLUESPECDIR)/Verilog \
]

set rtl_files [ list \
    mkCompareRNS.v \
    FIFOL1.v \
]

set sdc_file constraints_${libname}.sdc

set_db script_search_path [ concat . ${project_base}/syn/common ]
include run_rc.tcl

# suspend
quit
