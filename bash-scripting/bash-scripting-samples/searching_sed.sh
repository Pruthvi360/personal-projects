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

echo "--------------------------------Using sed to display word matching line------------------------------------"

sed -n '/pruthvi/p' sed_demo.txt

echo "--------------------------------Using sed to display multiple word matching line------------------------------------"

sed -n -e '/pruthvi/p' -e '/systemd/p' sed_demo.txt

echo "--------------------------------Using variable to display multiple word matching line------------------------------------"

sed_1=pruthvi
sed_2=systemd
sed_3=tcpdump

sed -n -e "/$sed_1/p" -e "/$sed_2/p" -e "/$sed_2/p" sed_demo.txt


echo "--------------------------------Using array variable to display multiple word matching line------------------------------------"

sed_1=(pruthvi systemd tcpdump)

sed -n -e "/${sed_1[0]}/p" -e "/${sed_1[1]}/p" -e "/${sed_1[2]}/p" sed_demo.txt

echo "--------------------------------Using sed to deleting line which are not matching------------------------------------"

sed -n '1,3!p' sed_demo.txt

echo "--------------------------------Using sed to deleting word matching line------------------------------------"

sed -n -e '/pruthvi/d' -e 'p'  sed_demo.txt

echo "--------------------------------Using sed to deleting word which are not matching------------------------------------"

sed -n -e '/pruthvi/!d' -e 'p'  sed_demo.txt

echo "--------------------------------Using sed to deleting word which are not matching------------------------------------"

sed -n -i.back '/pruthvi/!d'  sed_demo.txt


echo "--------------------------------Restore original file------------------------"

cat -n /etc/passwd > sed_demo.txt


