require 'pry'

class Board
  INITIAL_MARKER = ' '
  def initialize
    @squares = {}
    (1..9).each {|key| @squares[key] = Square.new(INITIAL_MARKER)}
  end

  def get_square_at(key)
    @squares[key]
  end

  def set_square_at(key, marker)
    @squares[key].marker = marker
  end
end

class Square
  attr_accessor :marker

  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end
end

class Player
  attr_reader :marker
  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new("X")
    @computer = Player.new("O")
  end

  def display_welcome_message
    system 'clear'
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def human_move
    puts "Choose an available square 1, 2, 3, 4, 5, 6, 7, 8, or 9: "
    square = nil
    loop do 
      square = gets.chomp.to_i
      break if (1..9).include?(square)
      puts "Sorry that is not a valid square, try again."
    end
    board.set_square_at(square, human.marker)
  end

  def display_board
    puts ""
    puts "     |     |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  #{board.get_square_at(3)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  #{board.get_square_at(6)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  #{board.get_square_at(9)}"
    puts "     |     |"
    puts ""
  end 
  
  def display_goodbye_message
    puts "Thank you for playing Tic Tac Toe. Goodbye!"
  end

  def play
    display_welcome_message
    loop do
      display_board
      human_move
      display_board
      break
      break if someone_won? || board_full?

      computer_move
      break if someone_won? || board_full?
    end
    #display_winner
    display_goodbye_message
  end

end

game = TTTGame.new
game.play