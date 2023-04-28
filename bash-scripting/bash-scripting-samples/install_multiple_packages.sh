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

for ((;;))
do
  echo "------------------------ You are installing apache2 packages-------------------------------------"

  sudo apt-get install apache2 -y
  
  echo "------------------------ You are installing nginx packages ---------------------------------------"

  sudo apt-get install nginx -y

  echo "--------------------------- You are installing vim packages --------------------------------------"

  sudo apt-get install wget -y


  if [[ $? -eq 0 ]]; then
  break
  fi

done
