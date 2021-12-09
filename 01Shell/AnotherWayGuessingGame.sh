#!/usr/bin/bash

# first generate a random number, use the moduo to decide the range
# create the guess variable to account for the amount of guesses

randomAnswr=$[($RANDOM % 100) +1]
guesses=1
read randomAnswr
read UserGuess
echo "Guess what number from 0 to 100 I am thinking of?"
read  UserGuess

# create loop that tests out

while read UserGuess;
do
    if [[ $UserGuess == $randomAnswr ]];
    then
        break;
    else
        echo
    if [[ $UserGuess > $randomAnswr ]];
    then
        echo "Thats off, the guess is too high. Try again."
    if [[ $UserGuess < $randomAnswr ]];
    then
        echo "Thats not it, your answer is too low. Try again."
    fi
    fi
done
guesses=$((guesses+1))
echo "I know its tough, but you have to get better at guessing"
echo "Congrats you got the number right after $guesses tries. Run it again?"

