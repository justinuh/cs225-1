#!/bin/bash

##Matthew Fleek
##Lab3 

#Objective:  Check a users ID and if they're root then display a message saying 
#it's insecure to run this script as root. If they are not root then get their 
#home directory from the /etc/password file and display the size of the contents of it. 

#1.Get the users ID
#2.Exit if the user is root
#3.If the user is not root make sure their userid is larger than 500
#4.Check to see if /etc/password exists and is readable
#5.Get the users home directory from /etc/passwd
#6.Display the size of their home directory


useridZ=$(id -u)

echo "The current user's UID is: ${useridZ}"

if (( $[useridZ] = 0 )) ; then
	echo "Do not run as root!"
	exit
fi
