require 'pry'

class Board
  WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                       [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                       [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def draw
    puts ""
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
    puts ""
  end 
  
  def []=(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.select{|_, sq| sq.unmarked?}.keys
  end

  def full?
    unmarked_keys.empty?
  end

  def winner?
    !!winning_marker
  end

  def winning_marker
    winner = " "
    WINNING_CONDITIONS.each do |line|
      if line.all? {|current| @squares[line[0]].marker == @squares[current].marker}
        winner = @squares[line[0]].marker
      end 
    end
    return winner == " " ? nil : winner
  end

  def reset
    (1..9).each {|key| @squares[key] = Square.new}
  end

end

class Square
  INITIAL_MARKER = ' '
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def unmarked?
    marker == INITIAL_MARKER
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
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  def clear
    system 'clear'
  end

  def display_welcome_message
    clear
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def human_move
    puts "Choose an available square (#{board.unmarked_keys.join(', ')}): "
    square = nil
    loop do 
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry that is not a valid square, try again."
    end
    board[square] = human.marker
  end

  def computer_move
    board[board.unmarked_keys.sample] = computer.marker
  end

  def display_board
    clear
    puts "You're a #{human.marker}. Computer is a #{computer.marker}"
    board.draw
  end 
  
  def display_winner
    display_board
    if board.winning_marker == human.marker
      puts "You won!"
    elsif board.winning_marker == computer.marker
      puts "Computer won!"
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
    puts "Thank you for playing Tic Tac Toe. Goodbye!"
  end

  def play
    display_welcome_message
    loop do
      display_board
      loop do
        human_move
        break if board.winner? || board.full?

        computer_move
        display_board
        break if board.winner? || board.full?
      end
      display_winner
      break unless play_again?
      
      board.reset
    end
    display_goodbye_message
  end

end

game = TTTGame.new
game.play