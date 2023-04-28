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

#set -x

echo "=====================First Chaining method========================="



echo "Execute command1 && command 2 even if any command fails"

docker -v ; systemctl status docker


echo "=====================Second Chaining method========================="



echo "command 2 will execute if any command 1 succeeds"

docker -v && systemctl status docker


echo "=====================Thrid Chaining method========================="




echo "command 2 will execute if any command 1 fails"

docker -v || systemctl status docker



echo "=====================Fourth Chaining method========================="





echo "command 2 if command 1 is success else run command 3 "

docker -v && systemctl status docker || apache2 -v