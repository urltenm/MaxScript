#!/bin/bash

while true
do
	echo "1. reboot"
	echo "2. shutdown"
	echo "3. cancel"
	read -p "Enter your choice: " choice

	if [ $choice -eq 1 ]
	then
		echo "Your choice is REBOOT"
	elif [ $choice -eq 2 ]
	then
		echo "Your choice is SHUTDOWN"
	elif [ $choice -eq 3 ]
	then
		echo "You rejected current operation!"
		break
	else
		continue
	fi
done
