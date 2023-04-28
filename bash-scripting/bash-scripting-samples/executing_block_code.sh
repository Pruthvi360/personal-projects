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

#set -x


echo "============================combining 2 command in one single line using curly bracket========================"

{ systemctl status apache2 ; apache 2 -v ; }



echo "=====USING AND - OR LOGICAL OPERATIORS and (combining 2 command using curly bracket in second command)========"


which apache2 && { systemctl status apache2 ; echo "Apache 2 is installed" ; } || echo "Apache 2 is not installed"


