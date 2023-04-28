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
cnt=1
x=1
((x++))

for ((;;))
do
  ((cnt++))
  echo "Your are running infinity loop: $cnt"  
  sleep 1
  if [[ $cnt  -eq 20 ]]
  then
      break
  fi
done

for ((;;))
do
  echo "This is a infinite loop:  $cnt"
  sleep 1
done
