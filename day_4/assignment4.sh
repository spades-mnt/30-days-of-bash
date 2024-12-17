#!/bin/bash

#Create a script that checks if the user running it has write permission for a specified file. Print an appropriate message based on the result.

read -p "enter file name: "

file="kojo.txt"

if [ -w "$file" ]; then

echo "you have write permission for $file"

else

echo "you do not have write permission for $file"

fi
