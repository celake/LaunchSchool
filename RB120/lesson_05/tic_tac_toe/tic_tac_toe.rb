# frozen_string_literal: false

# tic tac toe board functionality
class Board
  WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                       [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                       [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def draw
    puts ''
    puts '     |     |'
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts '     |     |'
    puts '-----+-----+-----'
    puts '     |     |'
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts '     |     |'
    puts '-----+-----+-----'
    puts '     |     |'
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts '     |     |'
    puts ''
  end

  def []=(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.select { |_, sq| sq.unmarked? }.keys
  end

  def full?
    unmarked_keys.empty?
  end

  def winner?
    !!winning_marker
  end

  def winning_marker
    winner = ' '
    WINNING_CONDITIONS.each do |line|
      winner = @squares[line[0]].marker if line.all? { |current| @squares[line[0]].marker == @squares[current].marker }
    end
    winner == ' ' ? nil : winner
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end
end

# marker objects
class Square
  INITIAL_MARKER = ' '.freeze
  attr_accessor :marker

  def initialize(marker = INITIAL_MARKER)
    @marker = marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def to_s
    @marker
  end
end

# player class for marker storage
class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class Human < Player
  attr_reader :name

  def initialize
    set_name
  end

  def set_name 
    name = ''
    loop do 
      puts 'Please enter your name: '
      name = gets.chomp
      break if !name.empty?

      puts "Invalid input"
    end
    @name = name
  end
end

class Computer < Player
  attr_reader :name

  def initialize
    set_name
  end

  def set_name 
    @name = ['Weeberry', 'Fudgeface', 'Buzzcan Pieton', 'Boboman', 'Poorfy Beanierider'].sample
end

# Game Orcestration Engine
class TTTGame
  HUMAN_MARKER = 'X'.freeze
  COMPUTER_MARKER = 'O'.freeze
  FIRST_TO_MOVE = HUMAN_MARKER
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_player = FIRST_TO_MOVE
  end

  def play
    display_welcome_message
    main_game
    display_goodbye_message
  end

  private

  def clear
    system 'clear'
  end

  def display_welcome_message
    clear
    puts 'Welcome to Tic Tac Toe!'

    puts ''
  end

  def main_game
    loop do
      display_board
      player_move
      display_winner
      break unless play_again?

      reset
    end
  end

  def player_move
    loop do
      current_player_moves
      break if board.winner? || board.full?

      display_board
    end
  end

  def human_move
    puts "Choose an available square (#{board.unmarked_keys.join(', ')}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)

      puts 'Sorry that is not a valid square, try again.'
    end
    board[square] = human.marker
  end

  def computer_move
    board[board.unmarked_keys.sample] = computer.marker
  end

  def current_player_moves
    if @current_player == HUMAN_MARKER
      human_move
      @current_player = COMPUTER_MARKER
    else
      computer_move
      @current_player = HUMAN_MARKER
    end
  end

  def display_board
    clear
    puts "You're a #{human.marker}. Computer is a #{computer.marker}"
    board.draw
  end

  def display_winner
    display_board
    if board.winning_marker == human.marker
      puts 'You won!'
    elsif board.winning_marker == computer.marker
      puts 'Computer won!'
    else
      puts "Board is full, it's a tie!"
    end
  end

  def play_again?
    play_again = ''
    loop do
      puts 'Would you like to play agian? (y/n)'
      play_again = gets.chomp.downcase
      break if %w[y yes n no].include?(play_again)

      puts 'Sorry, invalid input.'
    end
    %w[y yes].include?(play_again) ? true : false
  end

  def display_goodbye_message
    puts 'Thank you for playing Tic Tac Toe. Goodbye!'
  end

  def reset
    board.reset
    @current_player = FIRST_TO_MOVE
  end
end

game = TTTGame.new
game.play
