#!/bin/bash
echo "Enter the file name:"
read file_name
echo "Enter the word you want to replace:"
read old_word
echo "Enter the replacement word:"
read new_word
if [ -e $file_name ]
then
sed -i "s/$old_word/$new_word/g" $file_name
echo "Word Replaced"
else 
echo "File does not exist"
fi
