#!/bin/bash


DISK_U=$(df -hT | grep xfs)
DISK_FULL=4
MESSAGE=""

while IFS= read -r line 
do
   USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
   FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [$USAGE -ge $DISK_FULL];
    then
        MESSAGE+="$FOLDER IS MORE THAN $DISK_FULL , Current usage : $USAGE \n"
    fi 

done <<< $DISK_U

echo -e " $MESSAGE "