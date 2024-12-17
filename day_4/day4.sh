 #!/bin/bash

# cotrol flow:if statements, else, elif ie. else if

echo -n "what is your name"

read name

if [ "$name" = "kojo" ]; then
 
echo "hi kojo".

else

echo "you are not kojo"

fi


#comparison operators and string  comparisons
echo -n "how old are you"
read age
if [ "$age" -ge 15 ]; then

echo "you are an adult"

else

echo "you are a kid"

fi

#file tests

touch mike.txt


read -p "enter file name: " input_file

file="mike.txt"

if [ "$input_file" = "$file" ] && [ -e "$file" ]; then 

echo "mike.txt exists"

 else

echo "file does not exist"

fi

#Assignment 1. Write a script that takes a number as input and tells if it's positive, negative, or zero.

read -p "enter number: " NUMBER

if [ "$NUMBER" -gt 0 ]; then 

echo "the number is positive"

elif [ "$NUMBER" -lt 0 ]; then

echo "the number is negative"

else

echo "the number is 0"

fi


# Assignment 2.Create a script that checks if a file exists. If it does, print its contents; if not, create it with some default text.

read -p "input file name: " FILE

FILE="kojo.txt"

if [ -e "$FILE" ]; then

echo "file exists. displaying its contents"

  cat "$FILE"

else

echo "file does not exist . creating a default text"

echo "this is the default text" > "$FILE"

echo "file '$FILE' created with default text."

fi



