#!/bin/bash

OLDIFS=$IFS
IFS=$'\n'
file=states

for state in $(cat $file); do
	echo "Visit the state called: $state"
done

IFS=$OLDIFS
