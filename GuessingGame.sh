
#!/usr/bin/bash
randomNum=$[($RANDOM % 100) +1]
guesses=1
read randomNum
echo "I'm thinking of a number between 1 and 100. Your guess:"

read randomNum
while read n2; do

if   [[ $UserGuess -eq $randomNum ]]; then
break;  
else
echo    
if [[ $UserGuess -gt $randomNum ]]; then 
echo -n "Sorry, your guess is too high. Give it another shot:"
elif [[ $UserGuess -lt $randomNum ]]; then
echo -n "Sorry, your guess is too low. Try again:"
fi      
fi
guesses=$((guesses+1))
done
echo
echo "Good job! It took you $guesses tries to get the right number. See if you can beat your record."

