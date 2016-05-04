#!/bin/bash

#this is fun stuff with options


while getopts :dha:x opt; do
	case $opt in 
		d) set -x ;;
		h) echo "Syntax: $0" ;;
		a) ARGUMENT="$OPTARG" ;;
		x) VAR=value ;;
	esac
done


