#!/bin/bash

#prompt user to input number

read -p "input the number to find its factorial: " number

#validate number

if ! [[ $number =~ ^[0-9]+$ ]]; then
       echo "invalid number! try again"
exit 1
fi

#initialize variables

factorial=1
counter=$number

#while loop

while [ $counter -gt 0 ]; do
factorial=$((factorial * counter))
counter=$((counter - 1))

        echo "the factorial for $number is $factorial"
done
