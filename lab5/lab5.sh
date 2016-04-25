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
# change internal field separator to process by line only
IFSOLD="$IFS"
IFS=$'\n'

mf1=$(cat ~/medialab/medialist.txt)

if [[ -f foundfiles.txt ]]; then
	rm foundfiles.txt
fi

if [[ -f lostfiles.txt ]]; then
	rm lostfiles.txt
fi  

for count in $mf1; do
	if [[ -f ~/medialab/$count ]]; then
		echo "$count" >> foundfiles.txt 
	else
		echo "$count" >> lostfiles.txt
	fi
done

echo "$(cat foundfiles.txt | wc -l) files accounted for"
echo "$(cat lostfiles.txt | wc -l) files not found"

#set internal field separator back to normal 
IFS=$IFSOLD
