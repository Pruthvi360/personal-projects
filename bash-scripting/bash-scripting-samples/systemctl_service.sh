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
set -x

read -p "Enter your service to start: " service
read -p "Enter your action to execute on $service: " action

sudo systemctl $action $service