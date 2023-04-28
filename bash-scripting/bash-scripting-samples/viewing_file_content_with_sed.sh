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

echo "--------------------------------Using sed command like a cat command------------------------------------"

sed '' sed_demo.txt

echo "------------------------------------Print particular last line in the file--------------------------------------"

sed -n '$p' sed_demo.txt

echo "------------------------------------Print particular line in the file--------------------------------------"

sed -n '4p' sed_demo.txt

echo "------------------------------------Print particular 1,4 line in the file--------------------------------------"

sed -n '1,4p' sed_demo.txt
echo "------------------------------------Print particular 4 line and +4 line after it in the file--------------------------------------"

sed -n '4,+4p' sed_demo.txt

echo "------------------------------------Skip 2nd line alternatively line print rest of the line in the file--------------------------------------"

sed -n '1~2p' sed_demo.txt

echo "--------------Deleting last line in the file------------------"

sed '$d' sed_demo.txt

echo "--------------Deleting 1 to 3 range of line in the file------------------"

sed '1,3d' sed_demo.txt



echo "--------------Deleting 1 to 3 range of line permanently form the file------------------"

sed -i '1d' sed_demo.txt

echo "--------------Befor Deleting 1 to 3 range of line permanently form the file take backup of the file------------------"

sed -i.back '1d' sed_demo.txt


<< mycom
echo "restore the original file"

cat -n /etc/passwd > sed_demo.txt
mycom


