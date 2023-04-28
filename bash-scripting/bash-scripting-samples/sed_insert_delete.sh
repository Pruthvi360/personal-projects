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

echo "insert a new line before a particular line but don't insert in the file"

sed '1i You are learning bash scripting' sed_demo.txt

echo "insert a new line before a particular line permanently in the file"

sed -i '1i You are learning bash scripting' sed_demo.txt

echo "insert a new line after a particular line but don't insert in the file"

sed '1a You are learning bash scripting' sed_demo.txt

echo "insert a new line after a particular line permanently in the file"

sed -i '1a You are learning bash scripting' sed_demo.txt

echo "deleting a particular line but don't delete in the file"

sed '1d' sed_demo.txt

echo "deleting a particular line permanently in the file"

sed -i '1d' sed_demo.txt

echo "insert a new line after or before a particular line"

sed -i '/pruthvi/i You are learning bash scripting' sed_demo.txt

sed -i '/pruthvi/a This is a second line of insertion in the file' sed_demo.txt

sed -i '/pruthvi/d' sed_demo.txt

