#!/bin/bash

##Matthew Fleek
##Lab2

echo "Enter a number" 

read "N1z"

DIV=$(( $N1z % 2 ))
if [[ "$N1z" =~ ^[0-9]+([.][0-9]+)?$ ]]; then

	if [[ "$DIV" -eq 0 ]]; then

		echo "$N1z" is even number

	else

		echo "$N1z" is odd number

	fi
else

	echo "You didn't enter a number d00dz!"

fi

