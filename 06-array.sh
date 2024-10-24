#!/bin/bash

MOVIES=("RRR" "Rangasthalam" "Magadheera")

echo " First movie name is : ${MOVIES[0]} "
echo " second movie name is: ${MOVIES[1]} "
echo " Third movie name is : ${MOVIES[2]} "

echo " All best movies of ramcharan : ${MOVIES[@]} "

echo " Sript name is : $0 "
echo "present working directory is :$PWD "
echo "home directory is : $HOME "
echo "The user is :$USER "
echo "Hostname is :$HOSTNAME "
echo "pROCESS ID OF PRESENT SCRIPT : $$ "
echo " background process running : & "
echo " process ID of lasst bg command : $! "