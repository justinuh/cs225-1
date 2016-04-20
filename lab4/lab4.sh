#!/bin/bash

#Objective: Use logical ANDs and ORs in conditions to simplify your code.
#Prompt the user for a number, sanitize the input (eg make sure the input is an integer)
#and using a logical AND to ensure it's between 50 and 100. 
#Do this with ONE if conditional. 

 

#1.Prompt the user for an integer
#2.Ensure it's an integer
#3.Check to see if it's in the desired range (50-100)
#4.Let the user know if it's a success

echo "Give us an interger!"

read num1

if [[ $num1 -gt 50 && $num1 -lt 100 ]]; then
	echo "You win the lottery! you picked the right number!"	
else
	echo "nope, thats not quite right"
fi

