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
id_user=$(id -u)

if [[ $id_user -ne 0 ]]
then 
    echo "ERROR: Your not a root user!"
    echo "Please login as root to perform this operation"
    exit 1
fi

read -p "Enter the service: " service

echo -e "Provide listed actions:\n1. Start\n2. Stop\n3. Restart\n4. version\n"

read -p "Enter the action to perform on $service : " action

if [[ $action == "start" ]]
then
    echo "Starting $service service"
    systemctl $action $service
elif [[ $action == "stop" ]]
then 
    echo "Stopping $service service"
    systemctl $action $service 
elif [[ $action == "restart" ]]
then 
    echo "Restarting $service service"
    systemctl $action $service
elif [[ $action == "version" ]]
then 
    echo "Your $service version: $($service -v | cut -d " " -f 3 | tr "," " ")"
else
    echo "Please provide correct input parameters"
fi
    


