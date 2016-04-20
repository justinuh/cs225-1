#!/bin/bash

NUM=0

while [ "$NUM -le '10' ]; do
	echo "run $NUM times"
	(($NUM++))
done
