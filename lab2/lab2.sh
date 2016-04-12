#!/bin/bash

##Matthew Fleek
##Lab2

echo "Enter a number" 

read "N1z"

#clean input of nasty 0s
N2z=$(echo $N1z | sed 's/^0*//') 
 
DIV=$(( $N2z % 2 ))

#check for #, then check for even/odd
if [[ "$N2z" =~ ^[0-9]+([.][0-9]+)?$ ]]; then

	if [[ "$DIV" -eq 0 ]]; then

		echo "$N2z" is even 

	else

		echo "$N2z" is odd 

	fi
else

	echo "I need a number bro..."

fi

