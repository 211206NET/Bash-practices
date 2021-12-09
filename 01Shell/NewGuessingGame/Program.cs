using System;
// naming the file
namespace NewGuessingGame
{
    class Program
    {
        // setup to make the program run
        static void Main(string[] args)
        {
            Random random = new Random();
            bool tryAgain = true;
            int min = 0;
            int max = 100;
            int guess;
            int number;
            int guesses;
            String response;
            // set up variables and variable types. also create response variable and test whether it is true or not in a loop.
            while (tryAgain)
            {
                guess = 0;
                guesses = 0;
                response = "";
                number = random.Next(min, max + 1);
                // while they are not equal loop
                while (guess != number)
                {
                    Console.WriteLine("Guess a number between " + min + " and " + max + " : ");
                    guess = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Guess: " + guess);
                    //  if your guess is higher or lower than the random number
                    if (guess > number)
                    {
                        Console.WriteLine(guess + " is too high!");
                    }
                    else if (guess < number)
                    {
                        Console.WriteLine("Your" + guess + " is too low!!!");
                    }
                    guesses++;
                }
                // tells you your number and the amount of guesse you took
                Console.WriteLine("Your Number is: " + number);
                Console.WriteLine("Woohoo!! YOU WIN!");
                Console.WriteLine("It only took you: " + guesses);
            
                // would you like to play again loop, depending on answer within the string for the response variable the program will run the guessing game again
                Console.WriteLine("Would you like to play again (y/n): ");
                response = Console.ReadLine();
                response = response.ToUpper();
                // .toUpper is in case cap locks is on so that the console will read the capitalization of the string as well
                if (response == "Y")
                {
                    tryAgain = true;
                }
                else
                {
                    tryAgain = false;
                }
            }

            Console.WriteLine("Thanks for playing! Come back if you're bored");

            Console.ReadKey();
        }
    }
}
