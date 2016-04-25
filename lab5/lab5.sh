#!/bin/bash

#Matthew Fleek
#CS225 LAB5 - Loops

#Objective:  Loop through data and act on each entry

#Loop through the items in medialist.txt
#Check to see if each item exists in the medialab directory
#If it does output the name to a new file called foundfiles.txt
#if it doesn't output the name to a new file called lostfiles.txt
#save your script as lab5.sh
 

#------------------------------------------------------------------------

IFSOLD="$IFS"
IFS=$'\n'

mf1=$(cat medialab/medialist.txt)
for count in $mf1; do
	if [[ -f medialab/$count ]]; then
		echo "$count" >> foundfiles.txt 
	else
		echo "$count" >> lostfiles.txt
	fi
done

IFS=$IFSOLD
