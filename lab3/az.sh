#!/bin/bash

#this script will run the lab3.sh script under a particular user.
#designed to run in the same dir as lab3.sh

echo "choose a user"

read az

su ${az} ./lab3.sh

