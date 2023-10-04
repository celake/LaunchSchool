def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    winner = 'You won!'
  elsif win?(computer, player)
    winner = 'Computer wins!'
  else
    winner = 'Its a tie!'
  end
  prompt(winner)
end

VALID_CHOICES = %w(rock paper scissors)
choice = ''
player_name = ''

prompt("Welcome to rock paper scissors!")
prompt("Please enter your name")

loop do
  player_name = gets.chomp
  if player_name.empty?
    prompt("Player name cannot be empty, please enter your name:")
  else
    break
  end
end

prompt("Hello #{player_name}, let's begin")
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(choice)
    prompt("That is not a valid choice, try again.")
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose #{choice} and the computer chose #{computer_choice}.")
  display_results(choice, computer_choice)
  prompt("Would you like to play again?  Enter 'y' for yes.")
  play_again = gets.chomp.downcase
  break if play_again != 'y'
end
