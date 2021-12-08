#!/usr/bin/bash

randomNum=$(($RANDOM % 100))

echo "Guess what number from 1 to 100 that im thinking about?"
read UserGuess
counter=1

#add loops that let them know hwether they are closer or fartherfrom the answer
while [ $UserGuess != $randomNum ]
do
    while [ $randomNum -gt 100 ] || [ $randomNum -lt 0 ]
    do 
        read $randomNum
        echo "That is completely out of range. Pick between 0 and 100."
    done
    if [ $diff -lt 0 ]
    then
        diff=$(($diff*-1))
    fi

    if [ $diff == 0 ]
    then
        break
    elif [ $diff -lt 3 ]
    then
        echo "you are getting very close to it."
    elif [ $diff -lt 10 ]
    then
        echo "You're getting there."
    elif [ $diff -gt 20 ]
    then
        echo "You're starting to get colder and colder."
    fi

    counter=$(($counter=+1))
    if [ $UserGuess -lt $randomNum ]
    then
        echo "you're off, go a little higher."
    else
        echo "its higher than what you have guessed."
    fi

    read UserGuess
done

Guesscounter="Guesses"
if [ $counter != 1 ]
then
    GuessCounter="Guesses"
fi

echo "You finally got the right number, $randomNum. Cheers all around."
echo "It only took you $counter $Guesscounter!"

