parse_config(){
  local design=$1

  local design_cap=$(echo $design | sed 's/./\u&/')
  local bsvpath="src"

  # Fix guesses if a config file exists
  if [[ -f $design/config ]]; then
    config_name=$(sed -n '1p' $design/config)
    if [[ -n $config_name ]]; then
      design_cap=$config_name
    fi

    config_deps=$(sed -n '2p' $design/config)
    if [[ -n $config_deps ]]; then
      dep_list=(${(ps: :)${config_deps}})
      for dep_folder in $dep_list; do
        bsvpath=$bsvpath":../$dep_folder/src"
      done
    fi

    absolute_deps=$(sed -n '3p' $design/config)
    # (>&2 echo $absolute_deps)
    if [[ -n $absolute_deps ]]; then
      dep_list=(${(ps: :)${absolute_deps}})
      for dep_folder in $dep_list; do
        bsvpath=$bsvpath":$dep_folder"
      done
    fi
  fi

  echo "$design_cap $bsvpath"
}

