#!/bin/bash

#Matthew Fleek 
#CS225 Lab6 More Loops

#Objective: Create a script called lab6.sh that will check to see if each media file in the medialab directory is in medialab/media.xml.

#List the filenames in the medialab directory that are not in media.xml
#Display the number of files in the medialab directory that are not in media.xml
#List the media files by name in media.xml that do not exist in the medialab directory
#Display the number of files that are in the media.xml that do not exist in the medialab directory

#--------------------------------------------------------------------------------------

IFSOLD="$IFS"
IFS=$'\n'

count1=0
count2=0

mldir_list="$(ls ~/medialab/* | awk -F '/' '{ print $NF }')"
xml_list="$(awk '/mpg|mp3/' ~/medialab/media.xml | awk -F '<' '{ print $2 }' | awk -F '>' '{ print $2 }')"

#1 and 2
for i in $mldir_list; do
	if ! grep -q  "$i" ~/medialab/media.xml; then
		((count1+=1))
		echo "$count1 - $i"
	fi
done

#3 and 4
for j in $xml_list; do
	if ! [[ -f ~/media/"$j" ]]; then
		((count2+=1))
		echo "$count2 - $j"
	fi
done 

#Tell everybody about it!
echo "There are $count1 files in the medialab directory that do not exist in the media.xml.
echo "There are $count2 files in the media.xml that do not exist in the medialab directory.

IFS="$IFSOLD"
