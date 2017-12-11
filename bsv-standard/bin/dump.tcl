if {![info exists ::env(DUMP)]} {set ::env(DUMP) ncsim.shm}
set ext [string trimleft [file ext $::env(DUMP)] "."]

if {$ext == "saif"} {
    dumpsaif -hierarchy -internal -scope -output $::env(DUMP)
} elseif {$ext == "tcf"} {
    dumptcf -scope main.dut -output $::env(DUMP)
} elseif {$ext == "vcd" || $ext == "shm"} {
    database -open -$ext -default $::env(DUMP)
    probe $::env(TOP_MODULE) -all -depth all -$ext
}

run

if {$ext == "saif" || $ext == "tcf"} {dump$ext -end}

if {![info exists ::env(NOEXIT)]} exit
