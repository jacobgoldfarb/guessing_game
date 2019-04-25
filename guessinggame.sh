#!/bin/bash
#guessinggame.sh

guess=-1
files_count=$(($(ls -1 | wc -l)+0))

function compare {
   if [[ $1 -gt $2 ]]
        then
                echo "Too high."
        elif [[ $1 -lt $2 ]]
        then
                echo "Too low."
        elif [[ $1 -eq $2 ]]
        then
                echo "You got it!"
        else
                echo "Program error: invalid input"
        fi	
}

while [[ $guess -ne $files_count ]]
do
	echo "How man files are in this directory?"
	read guess
	compare $guess $files_count
done
