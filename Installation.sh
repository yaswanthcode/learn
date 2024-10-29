#!/bin/bash

USERID=$(id -u)
R=\e[31m
G=\e[32m
N=\e[0m

echo "$USERID "

if [ $USERID -ne 0 ] 
then 
    echo " $R Please run this programme with root access $N"
    exit 1
else
    echo  -e " $G This user is a super user $N"
fi 

dnf install mysql -y 