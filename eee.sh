
#!/usr/bin/bash
n1=$[($RANDOM % 100) +1]
guesses=1
echo -n "I'm thinking of a number between 1 and 100. Your guess:"

read n1
while read n2; do

if   [[ $n2 -eq $n1 ]]; then
break;  
else
echo    
if [[ $n2 -gt $n1 ]]; then 
echo -n "Sorry, your guess is too high. New guess:"
elif [[ $n2 -lt $n1 ]]; then
echo -n "Sorry, your guess is too low. New guess:"
fi      
fi
guesses=$((guesses+1))

done
echo
echo "Good job! It took you $guesses guesses to get the right number."in/bash

