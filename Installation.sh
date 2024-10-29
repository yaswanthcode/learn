#!/bin/bash

USERID=$(id -u)
echo "$USERID "
if [$USERID -ne 0] then 
    echo " This user is not a superuser "
else
    echo  -e \e[32m"This user is a super user"
fi 

dnf install mysql -y 