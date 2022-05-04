#!/bin/bash
# Author: 
# Date: 04-05-2022
# Description: Snmaps


# Color variables 

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

# Confirmation of IP address and nmap it

if [ "$1" == "" ]
    then
    echo "\n$GREEN}you forgot an IP address!${NOCOLOR}"
    echo "$GREEN}Syntax: ./snmaps.sh 192.168.0${NOCOLOR}\n"

    else
    ./iLping.sh $1 >ip.txt

    for ip in $(cat ip.txt);do 
    sudo nmap -T4 -A -p- -O $ip; 
    done 
fi
