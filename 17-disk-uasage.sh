#!/bin/bash


#DISK=$(df -hT | grep xfs)
#DISK_FULL=4
#MESSAGE=""

#while IFS= read -r line 
#do
 #   USAGE=$(echo $line | awk -F " " '{ print $6F }' | cut -d "%" -f1)
 #   FOLDER=$(echo $line | awk -F " " '{ print $NF }')
  #  if [ $USAGE -ge $DISK_FULL] 
  #  then
  #      MESSAGE+="$FOLDER IS MORE THAN $DISK_FULL , Current usage : $USAGE"
  #  fi 

#done <<< $DISK

#echo " $MESSAGE "

#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

#echo "$MESSAGE" | mail -s "Disk Usage Alert" info@joindevops.com

# echo "body" | mail -s "subject" to-address
