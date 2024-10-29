#!/bin/bash

USERID=$(id -u)

echo "$USERID "

if [ $USERID -ne 0 ] 
then 
    echo " \e[31m Please run this programme with root access"
else
    echo  -e " \e[32m This user is a super user"
fi 

dnf install mysql -y 