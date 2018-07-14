#!/usr/bin/env bash
# File: guessinggame.sh

function greeting {
	echo "This is guessing game."
	echo "You should give correct answer to make it end."
	echo "How many files are in the current directory?"
}

function guessing {
	local files_count=$(ls -al | grep '^-' | wc -l)
	local correct_answer=0

	while [[ correct_answer -eq 0 ]]
	do
		echo ""
		echo "Please, enter your guess:"
		read user_answer

		if [[ ! $user_answer =~ ^[0-9]+$ ]]
		then
			echo "Your guess must be a nonnegative number."
			continue
		fi

		if [[ $user_answer -eq $files_count ]]
		then
			echo "Congratulations!!! You have guessed! Finally the program will end."
			let correct_answer=1
			continue
		fi

		if [[ $user_answer -lt $files_count ]]
		then
			echo "Your guess is too low. Please, try again."
		else
			echo "Your guess is too high. Please, try again."
		fi
	done
}

greeting
guessing
