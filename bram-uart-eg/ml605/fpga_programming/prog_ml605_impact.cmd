setMode -bscan
setCable -port auto -baud 12000000
identify
assignFile -p 2 -file mkML605Test.bit
program -p 2
quit
