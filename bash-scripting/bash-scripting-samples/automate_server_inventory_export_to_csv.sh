#!/usr/bin/env bash

#set -x
<< mycom
echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"
mycom

serer_name=$(uname -n)
ip_address=$(ifconfig | grep "inet" | awk 'NR==1{print $2}')
os_type=$(uname)
uptime=$(uptime | awk '{print $3}')

echo "Sl.no,Server_name,ip_address,os_type,uptime" > inventory.csv
echo "1,$serer_name,$ip_address,$os_type,$uptime" >> inventory.csv