#!/bin/bash 

PERSON1=$1 
PERSON2=$2 

echo " $@ "
if [$@ -eq 0]
then
    echo -e /e[32m"Pass arguments"
else
    echo "This is the first person name $PERSON1 "
    echo "This is the second person name $PERSON2 "
fi
#here we are trying to pass parameters in commandline 
