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

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################

set -x

echo "You output of command whoami: $(whoami)"

echo "You output of command id: $(id)"

echo "You output of command id -u: $(id -u)"

echo "You output of command id -un: $(id -un)"

id_user=$(id -u)

if [[ $id_user -eq 0 ]]
then
    echo "You are the root user"
else
    echo "You are not the root user"
fi

case $id_user in
     0)
       echo "You are the root user"
       ;;
    [1-1000])
       echo "You are not the root user"
       ;;
    *)
      echo "You input an invalid"
      ;;
esac


