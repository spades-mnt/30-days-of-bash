#!/bin/bash

#Write a script that uses a for loop to print the multiplication table for a given number (input by the user)

read -p "enter number:" number

#validate number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then

   echo "invalid number. please enter a positive integer"

exit 1
fi

#multiplication table

echo "multiplication table $number:"

for i in {1..12}; do

echo "$number x i = $((number * i))"
done
