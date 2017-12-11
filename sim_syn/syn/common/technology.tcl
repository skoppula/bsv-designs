if {$libname == "tsmc40lp"} {
    #######################################################
    ## Standard Cells
    #######################################################

    set lib_base /u/tsmc/CRN40LP/TSMCHOME/digital/Front_End/timing_power_noise/NLDM
    set stdcell_list [ list tcbn40lpbwp tcbn40lpbwphvt ]
    set stdcell_ver 200a
    set stdcell_path ""
    foreach lib $stdcell_list {
        set stdcell_path [concat $stdcell_path $lib_base/${lib}_${stdcell_ver}]
    }

    set fast_corner bc
    set leak_corner mlg
    set slow_corner wc
    set typical_corner tc

    if {[info exists corner]} {
        set pvt [set ${corner}_corner]
    } else {
        set pvt $slow_corner
    }

    #build list of .lib file names
    set target_library  ""
    foreach lib $stdcell_list {
        set target_library [concat $target_library ${lib}${pvt}.lib]
    }

    #######################################################
    ## SRAM
    #######################################################

    set_db lib_search_path $stdcell_path
    set_db library $target_library
} elseif {$libname == "tsmc45gs"} {
    #######################################################
    ## Standard Cells
    #######################################################

    set lib_base /u/tsmc/CLN45GS/TSMCHOME/digital/Front_End/timing_power_noise/NLDM
    set stdcell_list [ list tcbn45gsbwp12t tcbn45gsbwp12thvt ]
    set stdcell_ver 120c
    set stdcell_path ""
    foreach lib $stdcell_list {
        set stdcell_path [concat $stdcell_path $lib_base/${lib}_${stdcell_ver}]
    }

    set fast_corner bc
    set leak_corner mlg
    set slow_corner wc
    set typical_corner tc

    if {[info exists corner]} {
        set pvt [set ${corner}_corner]
    } else {
        set pvt $slow_corner
    }

    #build list of .lib file names
    set target_library  ""
    foreach lib $stdcell_list {
        set target_library [concat $target_library ${lib}${pvt}.lib]
    }

    #######################################################
    ## SRAM
    #######################################################

    set_db lib_search_path $stdcell_path
    set_db library $target_library
} elseif {$libname == "tsmc65lp"} {
    #######################################################
    ## Standard Cells
    #######################################################

    set lib_base /u/tsmc/CRN65LP/TSMCHOME/digital/Front_End/timing_power_noise/NLDM
    set stdcell_list [ list tcbn65lp ]
    set stdcell_ver 200a
    set stdcell_path ""
    foreach lib $stdcell_list {
        set stdcell_path [concat $stdcell_path $lib_base/${lib}_${stdcell_ver}]
    }

    set fast_corner bc
    set leak_corner mlg
    set slow_corner wc
    set typical_corner tc

    if {[info exists corner]} {
        set pvt [set ${corner}_corner]
    } else {
        set pvt $slow_corner
    }

    #build list of .lib file names
    set target_library  ""
    foreach lib $stdcell_list {
        set target_library [concat $target_library ${lib}${pvt}.lib]
    }

    #######################################################
    ## SRAM
    #######################################################

    set_db lib_search_path $stdcell_path
    set_db library $target_library
}
