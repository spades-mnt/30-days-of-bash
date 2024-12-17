#!/bin/bash


#Assignment 3.Write a script that compares two numbers provided as command-line arguments and prints whether the first number is greater than, less than, or equal to the second number

num1=$1
num2=$2



if [ "$#" -ne 2 ]; then

echo "usage: $0 <number1> <number2> "

exit 1

fi

if (( num1 > num2 )); then

echo "$num1 is greater than $num2"

elif (( num1 < num2 )); then

echo "$num1 is lesser than $num2"

else

echo "$num1 is equal to $num2"

fi

