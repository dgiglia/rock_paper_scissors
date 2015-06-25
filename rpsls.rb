CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

ROCK = {'lizard' => "Rock crushes lizard.", 'scissors' => "Rock crushes scissors."}
PAPER = {'rock' => "Paper covers rock.", 'spock' => "Paper disproves Spock."}
SCISSORS = {'paper' => "Scissors cut paper.", 'lizard' => "Scissors decapitate Lizard."}
LIZARD = {'paper' => "Lizard eats Paper.", 'spock' => "Lizard poisons Spock."}
SPOCK = {'rock' => "Spock vaporizes Rock.", 'scissors' => "Spock smashes Scissors."}


def compare_choices(*choices)
  winner = nil
  choices.each_with_index do |choice, index|
    case choice
    when 'rock' 
      if ROCK.has_key?(choices[index-1])
        puts ROCK[choices[index-1]] 
        winner = 'rock'
      end
    when 'scissors' 
      if SCISSORS.has_key?(choices[index-1])
        puts SCISSORS[choices[index-1]] 
        winner = 'scissors'
      end
    when 'paper' 
      if PAPER.has_key?(choices[index-1])
        puts PAPER[choices[index-1]]
        winner = 'paper'
      end
    when 'lizard' 
      if LIZARD.has_key?(choices[index-1])
        puts LIZARD[choices[index-1]]
        winner = 'lizard'
      end
    when 'spock' 
      if SPOCK.has_key?(choices[index-1])
        puts SPOCK[choices[index-1]]
        winner = 'spock'
      end
    end
    break if winner != nil
  end
  winner  
end
    
puts "Welcome to Rock - Paper - Scissors - Lizard - Spock, the ultimate boredom crushing game." 

loop do
  puts "-------------------------------"
  puts "Please type your choice. 1... 2... 3... GO!"
  player_choice = gets.chomp.downcase
 
  until CHOICES.include?(player_choice)
    say("That's not an option! Try again.")
    player_choice = gets.chomp.downcase
  end

  computer_choice = CHOICES.sample
  puts "    You chose #{player_choice.capitalize}. \n    The computer chose #{computer_choice.capitalize}."

  if player_choice == computer_choice
    puts "It's a tie!"
  end
  
  the_winner = compare_choices(player_choice, computer_choice)    
  case the_winner
  when player_choice
    puts "**You won!**"
  when computer_choice 
    puts "**You lost!**"
  end

  puts "Would you like to play again? (yes/no)"
  break if gets.chomp.downcase != 'yes'

end