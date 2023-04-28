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
echo "Find on present working directory"

find . -name "example.txt"

echo "Find all .png image files in the /home directory and its subdirectories:"

find /home -name "*.png"

echo -e "Consider using the type -f option to only search for files (ignore directories),\n and the -iname option to make your search case insensitive:"

find /home -type f -iname "example.txt"

echo -e "Find all .conf files that have been modified in the last seven days, are owned by user linuxconfig,\n and exist in that user's home directory:"

find /home/linuxconfig -type f -user linuxconfig -mtime -7 -name "*.conf"

echo -e "If you don't want the find command to traverse too deeply into subdirectories,\n you can specify a limit with the -maxdepth option. For example,\n this command will limit find to a depth of two subdirectories:"

find . -type f -maxdepth 2 -name "example.txt"

echo -e "The find command can automatically delete files it finds if you specify the -delete option.\n Be very careful with this option,\n and be sure to first run the find command without it so you know exactly what it plans to delete."

find . -type f -name "*.tmp" -delete

echo "The find command's functionality can be further extended with the -exec option.\n Using this option allows you to execute a command on every file that find finds.\n For example, let's change the file permissions to 750 for every file found:"

find . -type f -name "*.conf" -exec chmod 750 '{}' \; -print

