#!/bin/bash

#strings.Bash treats most variables as strings. variables store number, letter, etc.
name="mickey, francis, dede"
echo "$name" #output=mickey francis dede

#integers. used for arithmethic operations or performing calculations.
num1=5
num2=6
sum=$((num1 + num2))
echo "the sum is $sum" #output='the sum is 11'

#Arrays.they store multiple values in a single variable.
# a. Index
fruits=("apple" "banana" "orange")
echo "${fruits[0]}" #output=orange
echo "${fruits[@]}" #output= apple banana orange

# b. Associative
declare -A colors
colors[apple]="green"
colors[orange]="red"
echo "${colors[orange]}" #output=red

declare -a rooms
rooms[single_room]="small"
rooms[chamber_and_hall]="big"
echo "${rooms[single_room]}" #output=big

#boolean.for logical expressions. true/false
value=1
if ((value));then
    echo "value is true"
else
    echo "value is false"
fi       #output=value is true





















