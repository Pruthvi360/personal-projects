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

disk_available=$(df -h | grep -Ev "tmpfs|udev")

Threshold=80
consumed=$(df -h | grep -Ev "tmpfs|udev" | grep -E "/dev/sda3" | awk '{print $5}' | tr "%" " ")

if [[ $consumed -gt $Threshold ]]; then
    echo "WARNING You utlization is: $Threshold%" | /usr/bin/mail -s "Your disk utilization is $Threshold%" 
fi






