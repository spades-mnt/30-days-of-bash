#!/bin/bash

#Write a script that uses a for loop to iterate through all the files in the current directory and print their names and sizes.

for file in *; do

if [ -f "$file" ]; then
    echo "file:$file, size: $(stat -c%s "$file") bytes"
fi
done
