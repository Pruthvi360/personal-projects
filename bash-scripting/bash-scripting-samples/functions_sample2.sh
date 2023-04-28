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
<< mycom
read -p "Enter the Number 1: " n1
read -p "Enter the Number 2: " n2

echo "addition calucation for n1 and n2: $((n1+n2))"

echo "subtraction calucation for n1 and n2: $((n1-n2))"

echo "multiplication calucation for n1 and n2: $((n1*n2))"

mycom

enter_values()
{
    read -p "Enter the Number 1: " n1
    read -p "Enter the Number 2: " n2
addition()
{
    echo "addition calucation for n1 and n2: $((n1+n2))"
}    
subtraction()
{
    echo "subtraction calucation for n1 and n2: $((n1-n2))"
}
multiplication()
{
    echo "multiplication calucation for n1  and n2: $((n1*n2))"
}
}

enter_values
addition
subtraction
multiplication
