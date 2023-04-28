#!/usr/bin/env bash

clear
set -x

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
display()
{
    y=20
    echo "Your display variable outside the function curly brackets "X": $x"
    echo "By default all variables are Global variables"
    local z=110
    echo "display variable in the function curly brackets with local variable "Z": $z"
}

x=10
display

echo "Your display variable inside the function curly brackets"Y": $y"

echo "Your display variable inside the function curly brackets "Z": $z"

mycom

<< mycom
return_variable()
{
    x=6
    echo "$x"
}


y=$(return_variable)

echo "Displaying output value of return function: $y"

mycom

return_variable()
{
    x=6
    return "$x"
}


return_variable

echo "Displaying output value of return function: $?"























