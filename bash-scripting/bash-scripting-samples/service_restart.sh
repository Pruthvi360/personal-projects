#!/usr/bin/env bash

clear
set -x

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"
service=apache2
EMAIL=pruthvi99003871@gmail.com

systemctl status $service | grep -q "running"

if [[ $? -ne 0 ]]
then 
    echo "$service is not running" | mail -s "$service is not running" $EMAIL ;
    systemctl restart $service
fi
