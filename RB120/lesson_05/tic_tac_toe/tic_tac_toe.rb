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
  def initialize
    #3d grid
    # maybe a hash? or nested arrays?
      # strings integers or `Square` objects?
  end
end

class Square
  def initialize
    # status to keep track of squares mark?
  end
end

class Player
  def initialize
    set_name
    #marker for players marker
  end

  def mark

  end

  def play
    #possible called move
  end
end

class TTTGame
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
    puts "  X  |     |"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "     |     |  X"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "     |     |"
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