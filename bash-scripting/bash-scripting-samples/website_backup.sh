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

SRC="/var/www/html"
DEST="/mnt/e/bash-automation/backups"
EDTB=$(date '+%b_%d_%y_%H:%M')
DATE=$(date '+%b_%d_%y_%H:%M')

[[ -e $DEST ]] || mkdir $DEST

tar -cvzpf $DEST/my_website_backup$DATE.tar.gz $SRC