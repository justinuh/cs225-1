#!/bin/bash

#Matthew Fleek
#CS225 Lab7 -

#Objective: Make a shell script that takes one argument
#and duplicates the functionality of the basename command using pattern matching.

#Desired Output:

#lab7.sh /home/bob/test.txt 
# "test.txt"

f1="/home/$USER/test.txt"

if [[ -n $1 ]]; then
  echo ${1##*/} > $f1
else
  echo "you need to type something d00d!"
  exit 1
fi
