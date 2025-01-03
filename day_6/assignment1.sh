#!/bin/bash

# Write a function that takes a string as input and returns the reverse of that string.

reverse_string () {
  local input="$1"
  local reversed=""
  local length="${#input}"


for (( i=length-1; i>=0; i-- )); do
  reversed+="${input:i:1}"
done

echo "$reversed"
}

#Example

input_string="hello"
  echo "original: $input_string"
  echo "Reversed: $(reverse_string  $input_string)"
