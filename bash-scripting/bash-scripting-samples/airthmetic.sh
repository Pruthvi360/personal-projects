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

x=5
y=10

((sum=x+y))
echo $sum

((mul=x*y))
echo "$sum"

((div=x/y))
echo "$div"

((x++))

echo $x

((sum=10+16))
echo $sum

((y--))

echo $y

((sum=x+y))
echo $sum

echo $((x+y))


sleep 2

read -p "Enter the first num you want to multiply: " num1
read -p "Enter the second num you want to multiply: " num2

((sum=num1+num2))

echo "Total= " "$sum"




