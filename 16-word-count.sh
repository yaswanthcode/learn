#!/bin/bash

SOURCE_FILE="/learn/doc.txt"

Lines=' wc --lines < $SOURCE_FILE '
words=' wc --word < $SOURCE_FILE '

echo "No of lines : $Lines "
echo "No of words : $words "