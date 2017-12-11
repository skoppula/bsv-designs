#!/usr/bin/env zsh

source util.zsh

zparseopts -E -D -bsv_main=use_bsv_main -xilinx=use_xilinx -dump=dump_activity

if (( $# != 1 )) then
  echo "Usage: $0 <design-folder> [--bsv_main] [--xilinx] [--dump]"
  exit
fi

design=$(echo $1 | sed 's#/##')

# Guess the design name based on folder & set BSV Standard dependencies
parsed_string=$(parse_config $design)
parsed_result=(${(s: :)parsed_string})
design_cap=$parsed_result[1]
design_folders=(${(ps/:/)parsed_result[2]})
bluespec_vlogdir="$BLUESPECDIR/Verilog"
curr_top="mk${design_cap}Test"

module add INCISIVE
export DUMP="${design}.saif"
export TOP="${curr_top}"
dump_script="${BSV_STDPATH}/bin/dump.tcl"

cd $design
rm -rf $DUMP
#vpaths=("vlog/*.v" "../../../sram-bsv/bram/*.sv")
vpaths=("vlog/*.v")
for folder in $design_folders; do
  if [[ -n $(find $folder -maxdepth 1 -name '*.v' -print -quit) ]]; then
    vpaths+=("$folder/*.v")
  fi
done

cpaths=()
copts=""
if [[ -d "vpi" ]]; then
  if [[ -n $(find "vpi" -maxdepth 1 -name '*.c' -print -quit) ]]; then
    cpaths+=("vpi/*.c")
  fi
  if [[ -n $(find "vpi" -maxdepth 1 -name '*.cpp' -print -quit) ]]; then
    cpaths+=("vpi/*.cpp")
  fi
  if [[ -n $(find "vlog" -maxdepth 1 -name '*.c' -print -quit) ]]; then
    cpaths+=("vlog/*.c")
  fi
  copts+="-I./vlog -I./vpi -I$BLUESPECDIR/VPI -L$BLUESPECDIR/VPI/g++4_64 -lbdpi"
fi

if [[ -n $use_bsv_main ]]; then
  top="main"
  bsv_main_opt="+define+TOP=${curr_top} $bluespec_vlogdir/main.v"
else
  top="mk${design_cap}Test"
  bsv_main_opt=""
fi

if [[ -n $use_xilinx ]]; then
  module add vivado
  xilinx_files="/opt/xilinx/Vivado/2016.3/data/verilog/src/glbl.v"
  xilinx_opt=("-reflib $HOME/xilinx/ies_simlib/unisims_ver" "-top glbl")
else
  xilinx_files=""
  # xilinx_opt=()
fi

if [[ -n $dump_activity ]]; then
  dump_opts="-input $dump_script"
else
  dump_opts="-gui"
fi
export TOP_MODULE=$top
irun -64bit -nocopyright \
  +name+${top} +nclibdirname+INCA_libs_hdlsim -log hdlsim.log \
  +define+BSV_ASSIGNMENT_DELAY=#1 \
  +define+BSV_NO_INITIAL_BLOCKS \
  +libext+.v +access+rw \
  -timescale '1ps/1ps' \
  ${BLUESPECDIR}/Verilog/ClockGen.v \
  -top worklib.${top} $vpaths \
  $xilinx_files $xilinx_opt \
  -y $bluespec_vlogdir \
  $bsv_main_opt \
  $cpaths $copts \
  $dump_opts

cd ..

