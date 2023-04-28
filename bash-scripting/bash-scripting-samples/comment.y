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



echo "<< MYCOMMENT
\nAuthor: Pruthvi S\n
Date: 05/04/23\n
Purpose: Learning bash-scripting\n
MYCOMMENT"

echo "Thrid method of commenting out"

:'
this commenting
Third method
'

"
