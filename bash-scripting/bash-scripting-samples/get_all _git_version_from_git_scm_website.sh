#!/bin/bash
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

which wget 1>/dev/null 2>/dev/null

if [[ $? -ne 0 ]]
then 
    echo "ERROR: Please install wget"
    exit 1
fi

if [[ -e index.html ]]
then
    echo "Removing old index.html"
    sudo rm -rf index.html
fi

url=https://mirrors.edge.kernel.org/pub/software/scm/git/

wget $url

if [[ $? -ne 0 ]]
then
    echo "Unable to fetch git url"
fi

echo "*************************************Processing all the git versions in the git-scm repository**********************************************"
declare -a git_version
while read line
do
  git_version+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{print $2}' | cut -d "-" -f 2 | awk -F ".tar.gz" '{print $1}'))

done < index.html

echo "Avaliable Git Version:"

cnt=0
git_vers=${#git_version[*]}

width=20
for each in ${git_version[*]}
do
  #echo -e "\t\t ${git_version[$cnt]}" \\t "${git_version[$((cnt+1))]}" \\t "${git_version[$((cnt+2))]}"
  printf "%-*s %*s %*s\n" $width ${git_version[$cnt]} $width ${git_version[$((cnt+1))]} $width ${git_version[$((cnt+2))]}
  cnt=$((cnt+3))
  if [[ $cnt -ge $git_vers ]]
  then 
      break
  fi
done
echo "${git_version[*]}"