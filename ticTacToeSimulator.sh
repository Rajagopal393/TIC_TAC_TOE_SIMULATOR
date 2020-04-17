#! /bin/bash

assignSign=$((RANDOM%2))
isXsign=1
isOsign=0

if [ $assignSign -eq isXsign ]
	then
		echo "Your sign is 'X'"
else
		echo "Your sign is 'O'"
fi