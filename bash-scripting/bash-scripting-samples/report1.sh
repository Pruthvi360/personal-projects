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
DockerVersion=$(docker -v | cut -d " " -f 3 | tr "," " ")
NginxVersion=$(nginx -v 2>&1 | cut -d " " -f 3 | cut -d "/" -f 2)
OSname=$(uname)

cat <<EOF | mail -s "$(date): Report On $(hostname)" "pruthvi99003871@gmail.com" 
Doker Version: $DockerVersion
Nginx Version: $NginxVersion
OS name: $OSname
EOF
