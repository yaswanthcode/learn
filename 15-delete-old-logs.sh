#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G Directory exists $N "
else
    echo -e " $R Check the directory name $N "
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14 )

echo " Files to be deleted are : $FILES "
