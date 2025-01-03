#!/bin/bash

#Write a bash function that checks if a given number is prime. Then use this function in a script that finds all prime numbers between 1 and 100.

is_prime() {
    local num=$1
if (( num <= 1 )); then
    return 1
fi

for (( i=2; i*i<=num; i++ )); do
  if (( num % i == 0 )); then
      return 1 #not prime

  fi
done
return 0 #prime

}

#script to find all prime numbers between 1-100

echo "prime numbers 1-100:"

for (( n=1; n<=100; n++ )); do
    if is_prime "$n"; then
     echo "$n"
    fi
done

























