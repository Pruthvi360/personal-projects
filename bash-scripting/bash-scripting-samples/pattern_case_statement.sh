#!/usr/bin/env  bash
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

echo "===============Validate pattern used in case statement==========="

echo "---------------Enter only single keystroke-----------------------"


read -p "Enter any single Keystroke: " key

case $key in
    [0-9])
         echo "You entered a Number"
         ;;
    [a-z])
         echo "You entered a lower case alphabet"
         ;;
    [A-Z])
         echo "You entered a Upper case alphabet"
         ;;
    *)
      echo "Unable to find you keystroke"
       ;;
esac
