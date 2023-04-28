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
echo "Find the difference between echo and prints commands"

echo "how are you"

printf "how are you\n"

echo "how solve this using adding at end "\n" "

printf "how are you\n"

printf "%64s" " " | tr " " "-" 


COLOMNS=$(tput cols)
for((i=1;1<=COLOMNS;i++))
do
  if [[ $i -eq $COLOMNS ]]
  then
      echo "-"
      break
  fi 
  
  echo -n "-"
done

echo "$COLOMNS"

tput cols

tput lines



echo "=============================using printf with format======================================="

x=1
y=7.961

printf "%d %f\n" "$x" "$y" 

echo "=============================using printf with format======================================="

my_name=Pruthvi

printf "%d %f %s\n" "$x" "$y" "$my_name"

echo "=============================using printf with format======================================="

my_name=Pruthvi

printf "my_num=%d my_deci=%f my_name=%s\n" "$x" "$y" "$my_name"

echo "=============================using printf with format_with_modifiers======================================="

my_name=Pruthvi

printf "my_num=%02d my_deci=%0.10f my_name=%s\n" "$x" "$y" "$my_name"