#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
TIMESTAMP=$(date +%F/%H.%M.%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

echo "log file created $LOGFILE"

echo "User Id :$USERID "

if [ $USERID -ne 0 ] 
then 
    echo -e "$R Please run this programme with root access $N"
    exit 1
else
    echo -e "$G This user is a super user $N"
fi 


dnf install mysql -y 