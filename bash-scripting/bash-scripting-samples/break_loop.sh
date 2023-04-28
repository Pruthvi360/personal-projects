#!/usr/bin/env bash

clear
#set -x

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"

for each in $(seq 1 10)
do
 if [[ $each -eq 5 ]]
 then 
     break
fi
 echo "$each"
done
