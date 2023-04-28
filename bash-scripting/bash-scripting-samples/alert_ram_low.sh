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

Threshold=19
free=$(free -gt | grep -E "Mem" | awk '{print $4}')
EMAIL=pruthvi99003871@gmail.com

if [[ $free -lt $Threshold ]]
then 
     echo "Available RAM: $free : Your Server is running with low RAM" | /usr/bin/mail -s "Available RAM: $free : Your Server is running with low RAM" $EMAIL
fi

 

