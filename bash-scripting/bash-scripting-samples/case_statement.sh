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
#set -x

clear
read -p "Enter num1= " n1
read -p "Enter num2= " n2

echo "====================Menu====================="
#read -p "Select the action to perform

echo -e "for_Addition= 1\nfor_Subtraction= 2\nfor_Multiplication= 3\nfor_Division= 4\nfor_Percentage= 5"


echo "===================Option==================="

read -p "Enter your option= " opt


case $opt in
      1)
        echo "Addition function result: $((n1+n2))"
        ;;
      2)
        echo "Subtraction function result: $((n1-n2))"
        ;;
      3)
        echo "Multiplication function result: $((n1*n2))"
        ;;
      4)
        echo "Division function result: $(bc<<<"scale=3;$n2/$n1")"
        ;;
      5)
        my_result=$((n2/n1))
        echo "Your Result: $(bc<<<"scale=3;$my_result*100")%"
        ;;
      *)
        echo "You have selected invalid option"
        ;;
esac


