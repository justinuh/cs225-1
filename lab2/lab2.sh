#!/bin/bash

##Matthew Fleek
##Lab2

echo "Enter a number" 

read "N1z"

if ! [[ "$N1z" =~ "^[0-9]+$" ]] ; then

echo "This is not a number"

fi
