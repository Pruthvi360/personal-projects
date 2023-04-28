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

user=$(id -u)

if [[ $user -ne 0 ]]; then
   echo "ERROR: Your is not root user"
   exit 1
fi

for each in apache2 wget nginx
do
  which $each
  if [[ $? -ne 0 ]]
  then
      echo "---------------------------------You are not installed $each-----------------------------------"
  else  
      echo "----------------------------------------Installing $each---------------------------------------"
      sudo apt-get install $each -y
  fi
done

