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

#exercise 1. Create a script that asks for the user's name and age, stores them in variables, and then prints a greeting including this information.
#ask for the user's name
echo -n "enter your name: "
read user_name

#ask for user's age
echo -n "enter your age: "
read user_age

#print the greeting message
echo "Hello,$user_name! You are $user_age years old"

#exercise 2. Write a script that takes two numbers as command-line arguments, stores them in variables, and then performs and displays the results of addition, subtraction, multiplication, and division on these numbers.
#store a command-line argumentin variables
num1=$1
num2=$2

if [ "$#" -ne 2 ]; then
     echo "usage: $0 <number1>
<number2>"
     exit 1
fi

#perform arithmetic operations
addition=$((num1 + num2))
subtraction=$((num1 - num2))
multiplication=$((num1 * num2))

#division. check for division by zero
if [ "$num2" -eq 0 ]; then
    division="undefined (division by zero)"
else

    division=$((num1 / num2))
fi

#display results
echo "Addition: $num1 + num2 = $addition"
echo "subtraction: $num1 - num2 = $subtraction"
echo "Multiplication: $num1 * num2 = $multiplication"
echo "Division: $num1 / num2 = $division"



















