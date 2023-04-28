#!/bin/bash
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
<< mycom
cat server_info.txt <<EOF
192.168.10.1 automation automation date
192.168.10.2 kali kali pwd
192.168.10.3 redhat redhat "free -m"
EOF
mycom

while read ip user pass cmd
do 
  echo "====This command is Executing on $ip and $user and $cmd ====="
  sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip "$cmd"

done < server.info