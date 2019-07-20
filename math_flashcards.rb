# method to start the game
# and ask the user what kind of game they want to play
# addition, subtraction, multiplication, division

# begin Addition Flashcards method
def addition_flashcards()
    # clear screen
    system "clear"
    # choose two random numbers
    num_1 = Random.rand(0..15)
    num_2 = Random.rand(0..15)
    correct_answer = num_1 + num_2
    puts "What is #{num_1} + #{num_2}?"
    player_answer = gets.chomp.to_i
    if player_answer == correct_answer
        puts "Correct! #{num_1} + #{num_2} = #{correct_answer}"
    else
        puts "Sorry, #{num_1} + #{num_2} does not equal #{player_answer}, the correct answer is #{correct_answer}"
    end
    
    puts "Would you like to play again? (y/n/restart)"
    play_again = gets.chomp.downcase
    
    if play_again == "y"
        addition_flashcards
    elsif play_again == "restart"
        start_game
    else
        exit
    end
end
# end Addition Flashcards method

# begin Subtraction Flashcards method
def subtraction_flashcards()
    system "clear"
    num_1 = Random.rand(0..15)
    num_2 = Random.rand(0..15)
    # add logic for non-negative numbers with future work
    correct_answer = num_1 - num_2
    puts "What is #{num_1} - #{num_2}?"
    player_answer = gets.chomp.to_i
    if player_answer == correct_answer
        puts "Correct! #{num_1} - #{num_2} = #{correct_answer}"
    else
        puts "Sorry, #{num_1} - #{num_2} does not equal #{player_answer}, the correct answer is #{correct_answer}"
    end
    
    puts "Would you like to play again? (y/n/restart)"
    play_again = gets.chomp.downcase
    
    if play_again == "y"
        subtraction_flashcards
    elsif play_again == "restart"
        start_game
    else
        exit
    end
end
# end Subtraction Flashcards method

# begin Multiplication Flashcards method
def multiplication_flashcards()
    system "clear"
    num_1 = Random.rand(0..15)
    num_2 = Random.rand(0..15)
    correct_answer = num_1 * num_2
    puts "What is #{num_1} * #{num_2}?"
    player_answer = gets.chomp.to_i
    if player_answer == correct_answer
        puts "Correct! #{num_1} * #{num_2} = #{correct_answer}"
    else
        puts "Sorry, #{num_1} * #{num_2} does not equal #{player_answer}, the correct answer is #{correct_answer}"
    end
    
    puts "Would you like to play again? (y/n/restart)"
    play_again = gets.chomp.downcase
    
    if play_again == "y"
        multiplication_flashcards
    elsif play_again == "restart"
        start_game
    else
        exit
    end
end
# end Multiplication Flashcards method

# begin Division Flashcards method
def division_flashcards()
    system "clear"
    num_1 = Random.rand(0..15)
    num_2 = Random.rand(1..15) # cannot divide by 0 so start range at 1
    # add logic to make sure num_1 is greater than num_2
    correct_answer = num_1 / num_2
    puts "What is #{num_1} / #{num_2}?"
    player_answer = gets.chomp.to_i
    if player_answer == correct_answer
        puts "Correct! #{num_1} / #{num_2} = #{correct_answer}"
    else
        puts "Sorry, #{num_1} / #{num_2} does not equal #{player_answer}, the correct answer is #{correct_answer}"
    end
    
    puts "Would you like to play again? (y/n/restart)"
    play_again = gets.chomp.downcase
    
    if play_again == "y"
        division_flashcards
    elsif play_again == "restart"
        start_game
    else
        exit
    end
end

# start the game method
def start_game()
    system "clear"
    puts "Welcome to Math Flashcards!"
    puts "Which cards would you like? (addition|subtraction|multiplication|division)"
    game = gets.chomp.downcase
    
    if game == "addition"
        # call addition method
        addition_flashcards
    elsif game == "subtraction"
        # call subtraction method
        subtraction_flashcards
    elsif game == "multiplication"
        # call multiplication method
        multiplication_flashcards
    elsif game == "division"
        # call division method
        division_flashcards
    else
        puts "Sorry I didn't recognize that selection, please hit enter to try again."
        gets
        start_game
    end
end

# start the game
start_game

