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


sudo -v

case $? in
    0)
      echo "you have a sudo privilege"
      ;;
   [1-255])
      echo "you don't have sudo privilege"
      ;;
    *)
      echo "Invalid Option"
      ;;
esac


