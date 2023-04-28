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

docker -v | awk '{print $3}'

docker -v | awk '{print $3}' | tr "," " "

awk -F : '/root/ {print NR,NF,$1}' /etc/passwd

awk 'BEGIN {print "This is the line NO:",NR,$0} {print"This Display NO of field in the line:",NF,$0} END {print "This display content there in the field: ",$2}' /etc/passwd


awk -F : 'BEGIN {print "This is the line NO:",NR,$0} {print"This Display NO of field in the line:",NF,$0} END {print "This display content there in the field: ",$2}' /etc/passwd
