#! /bin/bash

assignSign=$((RANDOM%2))
isXsign=1
isOsign=0
NumberOfRowsInBoard=3
NumberOfColumnsInBoard=3

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

echo "The board u gonna play is ---->"

for ((rowNumber=0; rowNumber<$NumberOfRowsInBoard; rowNumber++))
	do
		for ((columnNumber=0; columnNumber<$NumberOfColumnsInBoard; columnNumber++))
			do
				echo -ne " . "
			done
		echo
	done