=begin
Game description:
  Tic Tac Toe is a 2-player board game played on a 3x3 grid. Players take turns
  marking a square. The first player to mark 3 squares in a row wins.

  Nouns: board, player, square, grid
  Verbs: play, mark

  Board
  Square
  Player
    - mark
    - play (move)

=end

class Board
  INITIAL_MARKER = ' '
  def initialize
    @squares = {}
    (1..9).each {|key| @squares[key] = INITIAL_MARKER}
  end

  def get_square_at(n)
    @squares[n]
  end

end

class Square
  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end
end

class Player
  def initialize
    #marker for players marker
  end

  def mark

  end

  def play
    #possible called move
  end
end

class TTTGame
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def display_welcome_message
    system 'clear'
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thank you for playing Tic Tac Toe. Goodbye!"
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
  
  def play
    display_welcome_message
    loop do
      display_board
      break
      player_one_moves
      break if someone_won? || board_full?

      player_two_moves
      break if someone_won? || board_full?
    end
    #display_winner
    display_goodbye_message
  end

end

game = TTTGame.new
game.play