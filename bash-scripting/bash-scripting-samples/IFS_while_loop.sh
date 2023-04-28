#!/bin/bash
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
<< mycom
cat server_info.txt | while read line
do
  echo "$line"

done < server_info.txt


while IFS="," read f1 f2 f3 f4 f5 
do
  echo "$f1"
done < server_info.txt


while IFS=" " read f1 f2 f3 f4 f5 
do
  echo "Printing value using space as a feild seperator..."
  echo "$f1"
done < server_info.txt



cat server_info.txt | awk 'NR!=1 {print}' | while read f1 f2 f3 f4
do 
  echo "$f1 $f2"
done
mycom

cat server_info.txt | awk 'NR!=1 {print}' | while IFS="," read f1 f2 f3 f4
do 
  echo "$f1 $f2"
done