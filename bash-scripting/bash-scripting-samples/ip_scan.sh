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

is_ip_reachable()
{
    ping -c 1 $i > /dev/null
    [[ $? -eq 0 ]] && echo " The host $i ip is up"
}
for i in 192.168.0.{1..255}
do
is_ip_reachable $i & disown

done 
exit




