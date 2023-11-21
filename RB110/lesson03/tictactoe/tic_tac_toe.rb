require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                     [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                     [[1, 5, 9], [3, 5, 7]]              # diagonals

computer_score = 0
player_score = 0

def prompt(message)
  puts "=> #{message}"
end

def get_player_name
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def display_board(board)
  system "clear"
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
  else
    array[0..-2].join(separator) + "#{separator}#{conjuction} "+ array[-1].to_s
  end
end


def player_move(board)
  square = ''
  loop do
    prompt("Enter an open location on the board #{joinor(empty_squares(board))}:")
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt("Sorry, that is not a valid choice.")
  end
  board[square] = PLAYER_MARKER
end

def computer_move(board, lines)
  square = computer_chose_square(board, lines)
  board[square] = COMPUTER_MARKER
end

def computer_chose_square(board, lines)
  moves = lines.map do |line|
    if board.values_at(*line).count('O') == 2
      board.select{|k,v| line.include?(k) && v == ' '}.keys.first
    elsif board.values_at(*line).count('X') == 2
      board.select{|k,v| line.include?(k) && v == ' '}.keys.first
    elsif board[5] == ' '
      5
    else 
      nil
    end
  end
  
  if moves.all?(nil)
    board.select {|key, value| value == ' '}.keys.sample
  else
    moves.select {|item| item != nil}.sample
  end
end

def board_full?(board)
  empty_squares(board) == []
end

def find_winner(board)
  WINNING_CONDITIONS.each do |set|
    if set.all? { |num| board[num] == PLAYER_MARKER }
      return player_name
    elsif set.all? { |num| board[num] == COMPUTER_MARKER }
      return "Computer"
    end
  end
  nil
end

def winner?(board)
  !!find_winner(board)
end

def game_winner(player, computer)
  if player == 5
    player_name
  elsif computer == 5
    "Computer"
  else
    false
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
player_name = get_player_name
puts "Each game is one round"
puts "Each match is over when someone wins five rounds"
puts "Have fun #{player_name}"

loop do
  board = initialize_board
  loop do
    display_board(board)
    player_move(board)
    break if winner?(board) || board_full?(board)
    computer_move(board, WINNING_CONDITIONS)
    break if winner?(board) || board_full?(board)
  end

  display_board(board)
  if winner?(board)
    prompt "#{find_winner(board)} won this round!" 
    find_winner(board) == player_name ? player_score += 1 : computer_score += 1
  else
    prompt "It's a tie!"
  end

  if game_winner(player_score, computer_score)
    prompt("The winner of this match is #{game_winner(player_score, computer_score)}")
  else
    prompt("The current score is #{player_name}: #{player_score} and Computer: #{computer_score}")
  end

  break if play_again? == false
end

prompt ("Thanks for playing tic tac toe #{player_name}. Bye!!")
