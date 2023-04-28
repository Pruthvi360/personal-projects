#!/bin/bash
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



cat input.txt | while read line
do
  echo "$line"
  echo "----------------------------------------------------"
  sleep 1
done 



