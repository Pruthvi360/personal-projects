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


LOGS=/mnt/e/bash-automation/logs.log
SECONDS=60

EMAIL=pruthvi99003871@gmail.com

for i in $@; do
      echo "$i-UP" > $LOGS.$i
done

while true; do
    for i in $@; do

ping -c 1 $i > /dev/null
if [ $? -ne 0 ]; then
      STATUS=$(cat $LOGS.$i)
               if [ $STATUS != "$i-DOWN!" ]; then
                  echo "'$(date)' : ping failed, $i is down " |
                   mail -s "$i host is down" $EMAIL
               fi
        echo "$i-DOWN!" > $LOGS.$i
else
    STATUS=$(cat $LOGS.$i)
            if [[ $STATUS != $i-UP! ]]; then
               echo "'$(date)' : ping OK, $i is UP "
            fi
        echo "$i-UP!" > $LOGS.$i
fi
done

sleep $SECONDS
done
