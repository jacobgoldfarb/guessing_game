#!/bin/bash
#guessinggame.sh

guess=-1
files_count=$(($(ls -1 | wc -l)+0))

while [[ $guess -ne $files_count ]]
do
	echo "How man files are in this directory?"
	read guess
	echo "Guess $guess files $files_count"
	
	if [[ $guess -gt $files_count ]]
	then
		echo "Too high."
	elif [[ $guess -lt $files_count ]]
	then
		echo "Too low."
	elif [[ $guess -eq $files_count ]]
	then
		echo "You got it!"
	else
		echo "Program error: invalid input"
	fi
done

