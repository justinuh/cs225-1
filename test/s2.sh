#!/bin/zsh

echo "Please enter your name"
read NAME

if [[ "$NAME" = 'bob' ]] ;then
	echo "hello bob"
else
	echo "I don't know you"
fi
