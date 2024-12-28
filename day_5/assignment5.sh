#!/bin/bash

#Write a script that uses nested for loops to create a simple multiplication table for numbers 1 through 5.

for i in {1..5}; do
for j in {1..5}; do

echo -n "$(( i * j ))"
done
echo
done
