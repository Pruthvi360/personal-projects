#!/bin/bash
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


Threshold=80
rm -rf file_system-info.txt
df -Ph | grep -vE "Filesystem|udev|tmpfs|none" | while read line
do
  file_name=$(echo $line | awk '{print $1}')
  file_usage=$(echo $line | awk '{print $5}' | sed 's/%//g')
  echo "File system name: $file_name, Filesystem usage: $file_usage"
  if [[ $file_usage -gt $Threshold ]]
  then
      echo "$file_name:$file_usage" > file_system-info.txt
  fi
done

cont=$(cat file_system-info.txt | wc -l)
if [[ $cont -gt 0 ]]
then
    echo "Some file system reached the threshold"
    echo -e "Subject:Alert\n\n $(cat file_system-info.txt)\n" | /usr/sbin/sendmail pruthvi99003871@gmail.com
fi
