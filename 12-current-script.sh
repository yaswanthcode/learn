#!/bin/bash

COURSE="current script"

echo " This text is from $COURSE "
echo " PID $$ "

#./13-after-calling-script.sh
source ./13-after-calling-script.sh

echo "This text is from $COURSE "
echo " PID $$ "