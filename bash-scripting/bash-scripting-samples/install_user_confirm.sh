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
set -x

read -p "Enter you package to install: " package

if [[ $package == $package ]]
then 
    read -p "Do you want to install type (yes/no): " usercnf
if [[ $usercnf == "yes" ]]
then 
    sudo apt-get install -y
else
    echo "unable to install"
fi
if [[ $usercnf == "no" ]]
then
    echo "unable to install"
fi    
else 
    echo "Unable to install"
    echo "Enter correct package name to install"
fi