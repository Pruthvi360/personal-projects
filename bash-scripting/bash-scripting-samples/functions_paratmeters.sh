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

addition()
{
    echo "Display os\$0 in function is= $0"
    m=$1
    n=$2
    sum=$(( m+n ))
    echo "$sum"
}

x=1
y=2

addition $x $y

p=3
q=10

addition $p $q

addition 9 10

