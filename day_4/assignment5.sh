#!/bin/bash

#Write a script that asks for a user's age and name. If the user is 18 or older and their name is Admin, print Accesss denied

read -p "Enter name: "

read -p "Enter age: "

if [ "$name" = "Admin" ] && [ "$age" -ge 18 ]; then

echo "access granted"

else

echo "access denied"

fi
