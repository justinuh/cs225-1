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
rm foundfiles.txt lostfiles.txt
for count in $mf1; do
	if [[ -f medialab/$count ]]; then
		echo "$count" >> foundfiles.txt 
	else
		echo "$count" >> lostfiles.txt
	fi
done

echo "$(cat foundfiles.txt | wc -l) files accounted for"
echo "$(cat lostfiles.txt | wc -l) files not found"
IFS=$IFSOLD
