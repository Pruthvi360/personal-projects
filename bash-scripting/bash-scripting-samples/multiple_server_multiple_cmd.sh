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

echo "Executing DATE commmand on remote server passing password in the terminal"
sshpass -p "1995" ssh -t -o StrictHostKeyChecking=No root@192.168.0.1 "date"

echo "Executing free -m commmand on remote server passing password in the file"
sshpass -p /home/pruthvi/pass.txt ssh -t -o StrictHostKeyChecking=No root@192.168.0.1 "free -m"

echo "Executing whoami commmand on remote server passing password from evironment variable export SSHPASS="automation@123""
sshpass -e ssh -t -o StrictHostKeyChecking=No root@192.168.0.1 "whoami"



for eachip in 192.168.0.12 192.168.0.14
do
  for eachcmd in "free -m" date "whoami"
  do 
    echo "==============Executing on $eachip ============="
    sshpass -p "1996" ssh -t -o StrictHostKeyChecking=No pruthvi@$eachip $eachcmd
    echo "================================================================"
    done
done

