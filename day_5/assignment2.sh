#!/bin/bash

#Create a script that uses a while loop to simulate a simple guessing game. Generate a random number between 1 and 10, and let the user guess until they get it right.

#initialize the users guess

guess=0

#fetch the random number

random_number=$(( RANDOM % 10 + 1 ))

echo "I'm thnking of a number;guess"

#loop until the right number is achieved

while [[ $guess -ne $random_number ]]; do

read -p "guess the number:" guess


#validate the correct guess number

if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
   echo "invalid number between 1 and 10"
   continue
fi

#compare guess with the random number

if [[ $guess -gt $random_number ]]; then
    echo "too high, try again"

elif [[ $guess -lt $random_number ]]; then
    echo "too low, try again"

else
    echo "cogratulations, you guessed the right number"
fi
done
