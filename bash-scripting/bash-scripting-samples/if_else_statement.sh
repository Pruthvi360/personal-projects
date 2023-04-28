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

if pwd
then 
    echo "This command is executing since first command is successfull"
else
    date
    echo "This command is executing since first command is failing"
fi



if pwda
then 
    echo "This command is executing since first command is successfull"
else
    date
    echo "This command is executing since first command is failing"
fi

if which apache2 2>&1 1>/dev/null
then
    apache2 -v
    echo "This command is executed since first command is successfull"
else
    echo "Apache2 is not available"
    echo "This command is executed since first command is failing"
fi
