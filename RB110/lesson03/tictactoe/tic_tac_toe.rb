require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                     [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                     [[1, 5, 9], [3, 5, 7]]              # diagonals

BOARD_WITH_MARKERS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                       6 => '6', 7 => '7', 8 => '8', 9 => '9' }

computer_score = 0
player_score = 0

def prompt(message)
  puts "=> #{message}"
end

def set_player_name
  loop do
    puts "Please enter your name to begin: "
    name = gets.chomp
    if name.length == 0
      puts "Sorry, you need to enter at least one character for your name"
    else
      return name
    end
  end
end

def game_instructions(board)
  system 'clear'
  prompt("Choose if you would like to play a Match or individual games")
  prompt("First player to win 5 games wins a Match")
  prompt("The starting player is randomly selected.")
  prompt("On your turn enter number of the square where you would like to place your maker")
  display_board(board)
end

def game_choice?
  loop do
    prompt("Press 'M' to start a match or 'G' start a single game")
    response = gets.chomp
    if response.downcase == 'm'
      return true
    elsif response.downcase == 'g'
      return false
    else
      prompt("Sorry, that is not a valid choice.")
    end
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def display_board(board)
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |   #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |   #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |   #{board[9]}"
  puts "     |     |"
end

def joinor(array, separator = ", ", conjuction = "or")
  if array.length == 2
    "#{array[0].to_s} #{conjuction} #{array[1].to_s}"
  elsif array.length == 1
    array[0]
  else
    array[0..-2].join(separator) + "#{separator}#{conjuction} " + array[-1].to_s
  end
end

def player_move(board, player)
  square = ''
  if player == "player"
    loop do
      prompt("Enter an open location on the board #{joinor(empty_squares(board))}:")
      square = gets.chomp.to_i
      break if empty_squares(board).include?(square)
      prompt("Sorry, that is not a valid choice.")
    end
    board[square] = PLAYER_MARKER
  elsif player == "Computer"
    square = computer_chose_square(board)
    board[square] = COMPUTER_MARKER
  end
end

def switch_player(current_player)
  current_player = current_player == 'player' ? 'Computer' : 'player'
end

def computer_chose_square(board)
  moves = WINNING_CONDITIONS.map do |line|
    if board.values_at(*line).count('O') == 2
      board.select { |k, v| line.include?(k) && v == ' ' }.keys.first
    elsif board.values_at(*line).count('X') == 2
      board.select { |k, v| line.include?(k) && v == ' ' }.keys.first
    elsif board[5] == ' '
      5
    else
      nil
    end
  end
  if moves.all?(nil)
    board.select { |_key, value| value == ' ' }.keys.sample
  else
    moves.select { |item| item  }.sample
  end
end

def board_full?(board)
  empty_squares(board) == []
end

def find_winner(board, player_name)
  WINNING_CONDITIONS.each do |set|
    if set.all? { |num| board[num] == PLAYER_MARKER }
      return player_name
    elsif set.all? { |num| board[num] == COMPUTER_MARKER }
      return "Computer"
    end
  end
  nil
end

def winner?(board, player_name)
  !!find_winner(board, player_name)
end

def match_winner(player, computer, player_name)
  if player == 5
    player_name
  elsif computer == 5
    "Computer"
  else
    nil
  end
end

def play_again?
  loop do
    prompt("Would you like to play again? Y or N")
    response = gets.chomp
    if response.downcase == 'y'
      return true
    elsif response.downcase == 'n'
      return false
    else
      prompt("Sorry, that is not a valid choice.")
    end
  end
end

##################
# MAIN GAME LOOP #
##################

puts "Welcome to Tic Tac Toe! Please enter your name to get started: "
player_name = set_player_name
game_instructions(BOARD_WITH_MARKERS)
prompt("Good Luck #{player_name}")
match = game_choice?

loop do
  system 'clear'
  board = initialize_board
  current_player = ['player', 'Computer'].sample
  loop do
    system 'clear'
    if match
      prompt("Current scores are #{player_name}: #{player_score} and Computer: #{computer_score}")
    end
    display_board(board)
    player_move(board, current_player)
    current_player = switch_player(current_player)
    break if winner?(board, player_name) || board_full?(board)
  end
  display_board(board)
  if winner?(board, player_name)
    prompt "#{find_winner(board, player_name)} won!"
    if match
      find_winner(board, player_name) == player_name ? player_score += 1 : computer_score += 1
    end
  else
    prompt "It's a tie!"
  end

  if match
    if match_winner(player_score, computer_score, player_name)
      prompt("The winner of this match is #{match_winner(player_score, computer_score, player_name)}")
      if play_again?
        computer_score = 0
        player_score = 0
      else
        break
      end
    else
      prompt("The current score is #{player_name}: #{player_score} and Computer: #{computer_score}")
    end
  elsif play_again? == false
    break
  end
end

prompt("Thanks for playing tic tac toe #{player_name}. Bye!!")
