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

echo "below command replace only first word which contains root in the line but don't disturb orginal file"
sed 's/root/pruthvi/' sed_demo.txt


echo "below command replace all word which conatins "root" word in the file specify "g" global but don't disturb orginal file"
sed 's/root/pruthvi/g' sed_demo.txt


echo "below command replace all word which permanently in the orginale file use "-i""

sed -i 's/root/pruthvi/g' sed_demo.txt

echo "below command replace all word which permanently in the orginale file use "-i" back will take a back of the file"

sed -i.back 's/root/pruthvi/g' sed_demo.txt

echo "Remove 2nd word in the file specified to replace but don't disturb orginal file"

sed 's/daemon/systemctl/2' sed_demo.txt

echo "Remove 2nd word in the file specified to replace permanently "

sed -i.back 's/daemon/systemctl/2' sed_demo.txt

echo "The line which contains pruthvi in the replace with 1000 to 1"

sed '/pruthvi/s/1000/1/' sed_demo.txt


