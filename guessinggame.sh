#!/usr/bin/env bash

# File: guessinggame.sh


echo " Please add a number to guess how many files there are in the current directory:"
number_of_files=$(ls -a | wc -l)

function guessingnumber {
	read guess
	while [[ $guess != $number_of_files ]]
	do
		if [[ -z "$guess" ]] || [[ $guess =~ [^0-9] ]]
		then
			echo "You did not enter a number, please try again"
			guessingnumber
		elif [[ $guess -lt $number_of_files ]]
		then
			echo "$guess is too low, please try again"
			guessingnumber
		else
			echo "$guess is too high, ply try again"
			guessingnumber
		fi
	done
}
guessingnumber
echo "Congratulation $guess is the number of files in the current directory"
