CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
ROCK = ['lizard', 'rock'] 
ROCK2 = ['rock', 'scissors']
PAPER = ['paper', 'rock']
PAPER2 = ['paper', 'spock']
SCISSORS = ['paper', 'scissors']
SCISSORS2 = ['lizard', 'scissors']
LIZARD = ['lizard', 'paper']
LIZARD2 = ['lizard', 'spock']
SPOCK = ['rock', 'spock']
SPOCK2 = ['scissors', 'spock']

def compare_choices(choice1, choice2)
  choices = [choice1,choice2].sort
  case choices
  when ROCK 
    puts "Rock crushes lizard." 
    winner = 'rock'
  when SCISSORS 
    puts "Scissors cut paper." 
    winner = 'scissors'
  when PAPER 
    puts "Paper covers rock."
    winner = 'paper'
  when LIZARD2 
    puts "Lizard poisons Spock."
    winner = 'lizard'
  when SPOCK2 
    puts "Spock smashes Scissors."
    winner = 'spock'
  when SCISSORS2 then 
    puts "Scissors decapitates Lizard."
    winner = 'scissors'
  when LIZARD then 
    puts "Lizard eats Paper."
    winner = 'lizard'
  when PAPER2 then 
    puts "Paper disproves Spock."
    winner = 'paper'
  when SPOCK 
    puts "Spock vaporizes Rock."
    winner = 'spock'
  when ROCK2 
    puts "Rock crushes scissors."
    winner = 'rock'
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