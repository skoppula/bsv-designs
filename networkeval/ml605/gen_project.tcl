# In ISE's Tcl console (View -> Panels -> Tcl Console), type:
# source gen_project.tcl
# Or on command line: xtclsh gen_project.tcl

file delete -force xilinx
file mkdir xilinx
file copy weights.testing.txt xilinx
file copy features.testing.txt xilinx
cd xilinx

project new pe_ml605.xise
project new layereval_ml605.xise

project set family "VIRTEX6"
project set device "XC6VLX240T"
project set package "FF1156"
project set speed "-1"

set bsv /u/anantha/workspace3/share/programs/Bluespec/2016.07.beta1/lib
xfile add ../vlog/mkML605Test.v ../vlog/mkTbLayerEvalOnBoard.v ../vlog/mkUARTSpec.v $bsv/Verilog/ResetInverter.v $bsv/Verilog/FIFO2.v $bsv/Verilog.Vivado/SizedFIFO.v $bsv/Verilog/BRAM1.v $bsv/Verilog/BRAM1Load.v
# xfile add ../vlog/mkML605Test.v ../vlog/mkTbPEOnBoard.v ../vlog/mkUARTSpec.v $bsv/Verilog/ResetInverter.v $bsv/Verilog/FIFO2.v $bsv/Verilog.Vivado/SizedFIFO.v $bsv/Verilog/BRAM1.v $bsv/Verilog/BRAM1Load.v
xfile add ../constraints.ucf

project set top mkML605Test
project set "Generate Detailed MAP Report" "true" -process "Map"
project save

exec echo "Done setting up project"
# Uncomment to generate bitfile in script
process run "Implement Design"
#process run "Generate Programming File"
project save
project close
