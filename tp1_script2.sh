#!/bin/bash
# Arthur Muraro
# 22/10/2020

if [ $1 = "lock" ]
then
    echo $1
elif [ $1 = "shutdown" ]
then
    echo your system will be locked at $(date -d "$2 minutes" +"%H:%M:%S")
    converted=$(expr $2 \* 60)
    sleep $converted
    systemctl hibernate
else
    echo WRONG PARAMETERS
fi