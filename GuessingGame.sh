
#!/usr/bin/bash
randomNum=$[($RANDOM % 100) +1]
guesses=1
echo -randomNum "I'm thinking of a number between 1 and 100. Your guess:"

read randomNum
while read UserGuess; do

if   [[ $UserGuess -eq $randomNum ]]; then
break;  
else
echo    
if [[ $UserGuess -gt $randomNum ]]; then 
echo -n "Sorry, your guess is too high. New guess:"
elif [[ $UserGuess -lt $randomNum ]]; then
echo -n "Sorry, your guess is too low. New guess:"
fi      
fi
guesses=$((guesses+1))
done
echo
echo "Good job! It took you $guesses guesses to get the right number."

