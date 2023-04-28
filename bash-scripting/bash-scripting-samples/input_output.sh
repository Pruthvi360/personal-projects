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

read -p "Enter you name: " my_name

#my_name=Pruthvi
my_name_up=${my_name^^}

echo "This is my upper case name $my_name_up "


read -p "Enter your name: "

echo "$REPLY"
