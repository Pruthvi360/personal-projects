#!/usr/bin/env bash

echo "
###################################################################
#                                                                 #
# AUTHOR: PRUTHVI S                                               #
# DATE: 07-04-23                                                  #
# PURPOSE: BASE SCRIPTING                                         #
#                                                                 #
###################################################################
"
#set -x
print_header()
{
    printf "#%0.s" $(seq 1 $(tput cols))
    printf "\n"
}

center_msg()
{
    msg=$1
    terminal=$(tput cols)
    msg_len=$(echo ${#1})
    space=$((($terminal - $msg_len) /2 ))

    print_header
    printf " %0.s" $(seq 1 $space)
    printf "%s" "$1"
    printf "\n"
    print_header
}

check_pass()
{
    if [[ ! -e "remote_pass" ]]
    then
        center_msg "Store the password for ssh in the remote_pass file and try again."
        exit 1
    fi
}

check_user()
{
    if [[ ! -e "remote_user" ]]
    then
        center_msg "Store the username for ssh in the remote_user file and try again."
        exit 1
    fi
}

check_list_server()
{
    if [[ ! -e "server_list" ]]
    then
        center_msg "Store the list of servers ip/FQDN for ssh in the server_list file and try again."
        exit 1
    fi
}
center_msg "Weclome to automate Inventory collection"
check_pass
check_user
check_list_server
#ssh_opt="sshpass -f remote_pass ssh -n -o StrictHostKeyChecking=No -o PubkeyAuthentication=No pruthvi"
#sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip "$cmd"

echo "Sl_no,OS_TYPE,OS_VERSION,CPU_INFO,ARCHITECTURE_TYPE,HOST_OS,"  > remote_server_inventory.csv
while read "ip" "user" "pass" 
do
  echo "Working on ip $ip and user $user $pass"

  OS_TYPE=$(sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip cat /etc/os-release | grep -w "NAME" | awk -F "=" '{print $2}' | cut -d '"' -f 2)
  OS_VERSION=$(sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip cat /etc/os-release| grep -E "VERSION_ID" | awk -F "="  '{print $2}' | cut -d '"' -f 2)
  CPU_INFO=$(sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip cat /proc/cpuinfo | grep -E "model name" | awk -F : 'NR==1 {print $2}')
  ARCH_TYPE=$(sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip uname -p)
  HOST_OS=$(sshpass -p $pass ssh -n -o StrictHostKeychecking=No $user@$ip uname -r)

  echo "$OS_TYPE,$OS_VERSION,$CPU_INFO,$ARCH_TYPE,$HOST_OS" >> remote_server_inventory.csv
done < inventory_server
center_msg "Thanks"
