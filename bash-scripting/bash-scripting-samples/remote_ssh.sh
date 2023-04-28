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

sshpass -p "1996" ssh -t -o StrictHostKeyChecking=No pruthvi@192.168.0.12 "date"


#sshpass -p for passing the password in the command line terminal
#sshpass -e for passing the password in the environment variable export SSHPASS="password"
#sshpass -f for passing the password in the password from the file

#ssh -t to exit remote server terminal after executing the command
#ssh -o StrictHostKeyChecking=No to not to ask Yes or No for fingerprint

# last is the date command