#!/usr/bin/env zsh

if (( $# != 1 )) then
  echo "Usage: $0 <design-folder> "
  exit
fi

design=$(echo $1 | sed 's#/##')

cd $design
module add GENUS
genus -f setup_design.tcl
rm -rf fv
cd ..
