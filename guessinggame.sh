#!/usr/bin/env bash

# File: guessinggame.sh


echo " Please add a number to guess how many files there are in the current directory:"
read guess
number_of_files=$(ls | wc -l)

while [[ $guess != $number_of_files ]]
do
	if [[ $guess =~ [^0-9]+ ]]
	then
		echo "You did not enter a number, please try again"
		read guess
	elif [[ $guess -lt $number_of_files ]]
	then
		echo "$guess is too low, please try again"
		read guess
	else
		echo "$guess is too high, ply try again"
		read guess
	fi
done
echo "Congratulation $guess is the number of files in the current directory"
