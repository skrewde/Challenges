#!/usr/bin/perl
use strict;
use warnings;

# A comment in Perl is initialised with the "#" symbol!
# Line 10 expresses a variable as a random integer between 0 and 30.
# Line 11 expresses the total number of guesses the user has.
# Line 12 expresses the number of times the user has tried.

$number = int rand (20);
$guesses =  5;
$tries = 0;

print "Guess the random number (between 0 and 20): \n";

while($tries < $guesses)
{
    # The chomp() function records input from the user by cutting the number in the new line.
    chomp($input = <STDIN>);

    # Next block checks if input is blank.
    if($input != /^\s*$/)
    {
        # Checks if input equals random integer.
        if($input == $number)
        {
            # Breaks loop is input is correct.
            $answer = 1;
            last;
        }

        # This block checks if input is greater than the random integer.
        elseif($input > $number)
        {

            print "Your guess is higher than the answer.";
            print "Try a number higher than ${input}\n";
        }

        # This block runs if input is lower than the random integer.
        else()
        {
            print "Your guess is lower than the answer.";
            print "Try a number lower than ${input}\n";
        }

        # Increases number of tries by one.
        $tries++;
    }

    else()
    {
        $guesses--;
    }
}

    # This block ends the program, whether the user guessed right or not.
    if($answer == 1)
    {
        print "You guessed correct!";
        print "The random integer was indeed ${number}.";
    }
    else
    {
        print "Darn, you guessed wrong three times.";
        print "It was actually ${number}.";
    }