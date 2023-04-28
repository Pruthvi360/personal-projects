#!/usr/bin/env bash

clear
set -x

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"

myservice=(docker nginx)

for eachservice in ${myservice}
do
  systemctl status $eachservice
  if [[ $? -ne 0 ]]
  sudo apt-get install $eachservice -y
  else 
  echo "Your $eachservice is already installed"
  fi
done

