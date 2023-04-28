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


set -x

id_user=$(id -u)

if [[ $id_user -eq 0 ]]
then 
    systemctl start docker 1>/dev/null 2>/dev/null
    echo "Starting docker service"
else
    echo "You are not root user"
    echo "Please login as root user"
fi
