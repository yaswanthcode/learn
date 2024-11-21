#!/bin/bash

set -e 

SOURCE_FILE="/tmp/app-logs/doc.txt"

no_lines=' wc --lines < $SOURCE_FILE '
no_words=' wc --word < $SOURCE_FILE '

echo "No of lines : $no_lines "
echo "No of words : $n0_words "