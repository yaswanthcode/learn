#!/bin/bash

USERID=$(id -u)

echo "$USERID "

if [ $USERID -ne 0 ] 
then 
    echo "\e[31mPlease run this programme with root access \e[0m"
    exit 1
else
    echo  -e " \e[32m This user is a super user"
fi 

dnf install mysql -y 