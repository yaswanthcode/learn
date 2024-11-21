#!/bin/bash

source="/tmp/app-logs/doc.txt"


no_lines='wc --lines < $source'
no_words='wc --word < $source'

echo "No of lines : $no_lines "
echo "No of words : $no_words "

#!/usr/bin/bash

# path to the file
#file_path="/tmp/app-logs/doc.txt"

# using wc command to count number of lines
#number_of_lines=`wc --lines < $file_path`

# using wc command to count number of words
#number_of_words=`wc --word < $file_path`

# Displaying number of lines and number of words
#echo "Number of lines: $number_of_lines"
#echo "Number of words: $number_of_words"
