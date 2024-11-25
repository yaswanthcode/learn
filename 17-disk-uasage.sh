#!/bin/bash

DISK=$(df -hT | grep xfs)

echo " $DISK "