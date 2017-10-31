# In ISE's Tcl console (View -> Panels -> Tcl Console), type:
# source gen_project.tcl
# Or on command line: xtclsh gen_project.tcl

file delete -force xilinx
file mkdir xilinx
file copy y.txt xilinx
cd xilinx

project new bramuart_ml605.xise

project set family "VIRTEX6"
project set device "XC6VLX240T"
project set package "FF1156"
project set speed "-1"

set bsv /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib
xfile add ../vlog/mkML605Test.v ../vlog/mkBRAMUARTTest.v ../vlog/mkUARTSpec.v $bsv/Verilog/ResetInverter.v $bsv/Verilog/FIFO2.v $bsv/Verilog.Vivado/SizedFIFO.v $bsv/Verilog/BRAM1.v $bsv/Verilog/BRAM1Load.v
xfile add ../constraints.ucf

project set top mkML605Test
project set "Generate Detailed MAP Report" "true" -process "Map"
project save

# Uncomment to generate bitfile in script
#process run "Implement Design"
#process run "Generate Programming File"
#project save
project close
