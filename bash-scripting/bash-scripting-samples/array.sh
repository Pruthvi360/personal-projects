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

myarray1=(1 4 6 6 66)
myarray2=("ls -lrt" "pwd" "date" "hostname -s")

echo "${myarray1}"
echo "${myarray2}"  " Displaying all variables in array"
echo "${!myarray1[@]}"  " Display variables positions in array"
echo "${myarray2=[1]}"
echo "${myarray2[0]}"  "first element"
echo "${myarray2[-1]}"  "last element"

