#!/usr/bin/bash

#source="/tmp/app-logs/doc.txt"

# Correctly capturing the output of wc commands
#no_lines=$(wc -l < "$source")   # Count lines
#no_words=$(wc -w < "$source")   # Count words

# Output the results
#echo "No of lines: $no_lines"
#echo "No of words: $no_words"


#!/bin/bash

#source="/tmp/app-logs/doc.txt"


#no_lines=$(wc -l < $source)
#no_words=$(wc -w < $source)

#echo "No of lines : $no_lines "
#echo "No of words : $no_words "

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

#!/usr/bin/bash

source="/tmp/app-logs/doc.txt"

# Accept a word to search for from the user (or hardcode the word)
read -p "Enter the word to search for: " search_word

# Ensure the word is not empty
if [ -z "$search_word" ]; then
    echo "You must enter a word to search for."
    exit 1
fi

# Count the number of lines and words
no_lines=$(wc -l < "$source")   # Count lines
no_words=$(wc -w < "$source")   # Count words

# Count the occurrences of the search word (case-insensitive)
word_count=$(grep -o -i "\b$search_word\b" "$source" | wc -l)

# Output the results
echo "No of lines: $no_lines"
echo "No of words: $no_words"
echo "The word '$search_word' appears $word_count times in the file."

