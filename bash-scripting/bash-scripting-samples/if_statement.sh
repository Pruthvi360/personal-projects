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

if apache2 -v 2>&1 1>/dev/null
then 
   systemctl status apache2
fi

docker -v

if [[ $? -eq 0 ]]
then 
    systemctl status docker
    echo "This is you docker installed info: $(docker info)"
fi



if true
then
    echo "This command executing because value is true"
fi

if false
then
    echo "This command executing because value is false"
fi


