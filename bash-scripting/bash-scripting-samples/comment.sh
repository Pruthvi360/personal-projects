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
echo "First method of commenting out"

cat << EOF

#Author: Pruthvi S
#Date: 05/04/23
#purpose: Learning bash-scripting
EOF


echo "Second method of commenting out"



echo "

<< MYCOMMENT
Author: Pruthvi S
Date: 05/04/23
Purpose: Learning bash-scripting
MYCOMMENT
"

echo "Thrid method of commenting out"

echo "

: '
this commenting
Third method
'
"
