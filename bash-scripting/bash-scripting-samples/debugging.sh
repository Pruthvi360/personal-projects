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
#set -n echo "check for the syntax error in the script"

#set -e echo "exit scirpt if any error stops the scirpt"

#set -x echo " prints the commend in + symbol above result of command output"

#set -v echo " prints whole scirpt and command above the output"

#different way of giving set command is
# 1st = #!/usr/bin/env bash -x, -e,-n -v
# 2nd = bash -n debug.sh in the command line itself


pwd

date

user=$(whoami)

echo " I am the current user $user "

