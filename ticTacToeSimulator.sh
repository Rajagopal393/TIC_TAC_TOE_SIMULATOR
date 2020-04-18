#! /bin/bash

assignSign=$((RANDOM%2))
isXsign=1
isOsign=0

if [ $assignSign -eq $isXsign ]
	then
		echo "Your sign is 'X'"
else
		echo "Your sign is 'O'"
fi

tossForFirstChance=$((RANDOM%2))
isYou=1
isNotYou=0

if [ $tossForFirstChance -eq $isYou ]
	then
		echo "You are first to start the game...choose one box"
	else
		echo "Your opponents turn...wait for him to make move"
fi