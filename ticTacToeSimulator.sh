#! /bin/bash

assignSign=$((RANDOM%2))
isXsign=1
isOsign=0
NumberOfRowsInBoard=3
NumberOfColumnsInBoard=3
NUMBER_OF_BOXES=9
defaultBoxSign=.
userSign=0

declare -A boxDetails

for (( count=0; count<$NUMBER_OF_BOXES; count++ ))
	do
		boxDetails[$count]=$defaultBoxSign
	done	

startTheGame(){
	
	assignSignToPlayer
	tossForFirstMove
	displayBoard

}

assignSignToPlayer(){

	if [ $assignSign -eq $isXsign ]
		then
			echo "Your sign is 'X'"
			userSign=X
		else
			echo "Your sign is 'O'"
			userSign=O
	fi
}

tossForFirstMove(){
 
	tossForFirstChance=$((RANDOM%2))
	isYou=1
	isNotYou=0

	if [ $tossForFirstChance -eq $isYou ]
		then
			echo "You are first to start the game...choose one box"
		else
			echo "Your opponents turn...wait for him to make move"
	fi
}

displayBoard(){

	count=0
	for ((rowNumber=0; rowNumber<$NumberOfRowsInBoard; rowNumber++))
		do
			for ((columnNumber=0; columnNumber<$NumberOfColumnsInBoard; columnNumber++))
				do
					echo -ne " ${boxDetails[$count]} "
				done
			echo
		done
	
	chooseBox
}

chooseBox(){
	
	quit=323
	echo "Choose one box as per below instructions"
	echo "top-right corner    : 0	  top-middle    : 1	    top-left corner    : 3"
	echo "right middle        : 4	  center        : 5         left middle        : 6"
	echo "bottom-right corner : 7	  bottom-middle : 8	    bottom-left-corner : 9"
	echo
	echo "Enter $quit to exit the game "

read boxNumber

if [ $boxNumber -eq $quit ]
	then
		exit
elif [ $boxNumber -le $NUMBER_OF_BOXES ]
	then
		checkBox $boxNumber
else 
		echo "instruction not found....choose number again"
		chooseBox 
fi

}

checkBox(){ 

		box=${boxDetails[$1]}
	
	if [ $box != $defaultBoxSign ]
		then
			echo "That box has already taken..choose another"
			chooseBox	

	else
			boxDetails[$1]=$userSign
			displayBoard
			
			
	fi

}

startTheGame









