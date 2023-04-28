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

if [[ $# -ne 2 ]]
then
    echo "Hey admin, please run this script as follows"
    echo "usage: $0 <serviceName> <Action To Executeon Service>"
    echo "valid ActionToExecuteonService are: start stop restart status"
    exit 1
fi


#read -p "Enter your service to execute your action on it: " serviceName
#read -p "Enter your action to execute on your service: $serviceName: " action
serviceName=$1
action=$2
sudo systemctl $action ${serviceName}