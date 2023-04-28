#!/usr/bin/env bash
clear

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 pass path as an argument"
    exit 1
fi

given_path=$1
for each in $(ls ${given_path})
do
  if [[ -x $each ]]
  then
      echo " $each This file have Execution permission"
  else
      echo " $each This file does not have Execution permission"
  fi
done

