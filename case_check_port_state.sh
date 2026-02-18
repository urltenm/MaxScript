#!/bin/bash

while true
do
	echo "Check LISTENING status of port"
	echo -e "\033[1;31m1. - break & exit\033[0m"
	echo -e "\033[1;32m2. - check port\033[0m"
	read -p "Make your choice: " choice
	if [ $choice -eq 2 ]
	then
	read -p "Type PORT#: " port
	#do
		if netstat -tulpn | grep :$port > /dev/null; 
		then
			echo "====================================================="
			echo -e "\033[1;32mPort $port is in LISTENING STATE\033[0m"
			echo "====================================================="
			echo
		else
			echo "====================================================="
			echo -e "\033[1;31mPort $port is in NON LISTENING STATE\033[0m"
			echo "====================================================="
			echo
		fi
	#done
	elif [ $choice -eq 1 ] 
	then
		break
	else
		echo "Wrong data!"
		break
	fi
done
