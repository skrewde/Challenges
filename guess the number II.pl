#Rewrote the program without strict mode lol.

print "Guess the number (game)\n";
  
# A comment in Perl is initialised with the "#" symbol!
# Line 10 expresses a variable as a random integer between 0 and 30.
# Line 11 expresses the total number of guesses the user has.
# Line 12 expresses the number of times the user has tried.

$number = int rand 20;
$guesses = 5;
$tries = 0;
$correct = 0;
  
print "Guess a number (between 0 and 20): \n";
      

while($tries <= $guesses)
{
      
    ## The chomp() function records input from the user by cutting the number in the new line.
    chomp($userinput = <STDIN>);
    
    # Next block checks if input is blank.
    if($userinput != "blank")
    {
          
        # Breaks loop is input is correct. 
        if($number == $userinput)
        {
            $correct = 1; 
            last;
        }
          
        # This block checks if input is lower than the random integer.
        elsif($number > $userinput)
        {
            print "Your guess was too low,"; 
            print " guess a higher number than ${userinput}\n";
        }
          
         # This block runs if input is greater than the random integer.
        else
        {
            print "Your guess was too high,";
            print " guess a lower number than ${userinput}\n";
        }

        # Increases number of tries by one.
        $tries++;
      
}
    else
    {
        $guesses--;
    }
}
      
    # This block ends the program, whether the user guessed right or not.
    if($correct == 1)
    {
            print "You Guessed Correct!"; 
            print " The number was $number";
    }
    else
    {
            print "You guessed wrong :(";
            print "It was actually ${number}.";
    }