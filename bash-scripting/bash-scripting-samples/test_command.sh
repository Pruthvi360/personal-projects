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
set -x

test 4 -eq 4

echo "=================function================"

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac


echo "=================function================"

read -p "Enter your num1: " n1
read -p "Enter your num2: " n2


[[ $n1 -eq $n2 ]] 

echo "=================function================"

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================function================"

[[ $n1 -ne $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac


echo "=================function================"


[[ $n1 -gt $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac


echo "=================function================"


[[ $n1 -ge $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================function================"

[[ $n1 -le $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================function================"

[[ $n1 -lt $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac


echo "=================function================"

[[ ! $n1 -eq $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================STRING VALIDATE function================"

read -p "Enter a string of characters= " n1
read -p "Enter a string of characters= " n2


echo "=================function================"

[[ -z $n1 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac


echo "=================function================"

[[ -n $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================function================"

[[ $n1 == $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac

echo "=================function================"

[[ $n1 != $n2 ]] 

case $? in
    0)
      echo "Your Function is successfull"
     ;;
   [1-255])
     echo "Your Function as an Error"
    ;;
esac
