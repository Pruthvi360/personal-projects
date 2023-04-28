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

read -p "Enter you number: " n1

# using if statement

if [[ $n1 -ge 10 ]] 
then
    ehco "Your number is greater than 10"
else 
    echo "Your number is less than 10"
fi

# using case statement

case $n1 in
 [0-9])
            echo "Your number is less than 10"
            ;;
 [10-10000])
            echo "Your number is greater than 10"
            ;;
      *)
            echo "Keywords are not allowed"
            ;;
esac