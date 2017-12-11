#!/usr/bin/env zsh

source util.zsh

zparseopts -E -D -verilog=use_verilog

if (( $# != 1 )) then
  echo "Usage: $0 <design-folder> [--verilog]"
  exit
fi

design=$(echo $1 | sed 's#/##')

setenv BSV_STDPATH /homes/skoppula/bsv/bsv-standard
stdpath="${BSV_STDPATH}/src"
echo "using BSV standard library path:", $BSV_STDPATH
# echo $PATH | grep -q $stdpath
# if (( $? == 1 )) then
#   echo "Path updated to include the BSV Standard"
#   path=($stdpath $path)
# fi

# Guess the design name based on folder & set BSV Standard dependencies
parsed_string=$(parse_config $design)
parsed_result=(${(s: :)parsed_string})
design_cap=$parsed_result[1]
bsvpath=$parsed_result[2]":$stdpath"
echo $bsvpath

cd $design
if [[ -n $use_verilog ]]; then
  use INCISIVE
  export DUMP="${design}_dump.vcd"
  bsc_opt=("-verilog" "-elab" "-remove-dollar")
else
  bsc_opt=("-sim")
fi

# Run the default TestBench
mkdir -p .bscdir
mkdir -p vlog
bsc -u -p ${bsvpath}:%/Prelude:%/Libraries -keep-fires -aggressive-conditions \
  -show-range-conflict -bdir .bscdir -simdir .bscdir -info-dir .bscdir -vdir vlog \
  $bsc_opt -g mk${design_cap}Test src/${design_cap}Test.bsv

# bsim.py -d src/${design_cap}Test.bsv compile -m mk${design_cap}Test -p $bsvpath $simopts

cd ..
