
puts"Let's play guess the number"


@play_again = 'y'


def guessTheNumber
    
    num_guesses = 0
    
    loop do
        print "What is your guess? "
        guess = gets.chomp
        num_guesses += 1
        
            unless guess.to_i == @number
                if guess.to_i.to_s == guess
                    message = if guess.to_i > @number
                    "Too high. Guess again:"
                    elsif guess.to_i < @number
                    "Too low. Guess again:"
                    end
                    puts message
                elsif guess.to_i.to_s != guess
                puts"Please enter a number"
                end
            else
            
            puts "You got it! "
            puts "It took you #{num_guesses} guesses."
        
            if num_guesses == 1
                print"You're a mind reader!"
            elsif num_guesses > 1 && num_guesses <= 4
                print"Most impressive."
            elsif num_guesses > 4 && num_guesses <= 6
                print"You can do better than that."
            elsif num_guesses > 6
                print"Better luck next time."
            end

        puts "Do you want to play again: y/n"
        @play_again = gets.chop
        
        if @play_again == 'n'
            puts"Goodbye!"
            exit
        elsif
        @play_again == 'y'
        selectDifficulty
        end
    end
    
end
end



def selectDifficulty
    
    puts "Pick a difficulty level (1, 2, or 3) "
    
    difficulty = gets.chomp.to_i
    
    
    if difficulty == 1
        @number = rand(1..10)
        
        puts "I'm thinking of a random number from 1 to 10"
        puts "Can you guess it?"
        guessTheNumber
        
        
        elsif difficulty == 2
        @number = rand(1..100)
        
        
        puts "I'm thinking of a random number from 1 to 100"
        puts "Can you guess it?"
        guessTheNumber()
        
        
        elsif difficulty == 3
        @number = rand(1..1000)
        
        puts "I'm thinking of a random number from 1 to 1000"
        puts "Can you guess it?"
        guessTheNumber()
        
        
        else
        print "Please pick a number between 1,2, or 3 for the difficulty"
        exit
    end
    
end



while @play_again == 'y'
    
    selectDifficulty
    
end  # end while loop