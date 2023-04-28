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
x=10
y=34

my_result=$(bc<<<"scale=2;$x+$y")

echo "Total of the sum: " "$my_result"



read -p "Enter your first num for division: " a
read -p "Enter your second num for division: " b

my_result=$(bc<<<"scale=3;$a/$b")


echo "Result of your division = $my_result"
