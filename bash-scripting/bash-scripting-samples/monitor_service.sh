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

myservice=(docker nginx)

for service in ${myservice[@]}
do
  systemctl status $service
  if [[ $? -ne 0 ]]
  echo "Your $service is not running on $(hostname -s)| /usr/bin/mail -s "Your $service is Down" "pruthvi99003871@gmail.com" "
  else
  echo "Your $service is running"
  fi
done

