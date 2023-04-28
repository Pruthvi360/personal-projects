#!/usr/bin/env bash

clear
#set -x

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"

echo "1 2" | awk '{print "a="$1,"b="$2}'

awk '{a=1; b=2 ; print a,b}'


echo "1 2" | awk '{a=$1 ; b=$2 ; print a,b}'