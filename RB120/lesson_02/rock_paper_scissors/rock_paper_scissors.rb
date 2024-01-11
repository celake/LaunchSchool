# frozen_string_literal: false

# Top level player class
class Player
  attr_accessor :move, :name, :score
  attr_reader :move_history

  def initialize
    set_name
    @score = 0
    @move_history = []
  end

  def self.number_of_wins
    @@number_of_wins
  end

  def reset
    @human_player = 0
    @computer_player = 0
    @move_history = []
  end
end

# Human subclass for specific player functionality
class Human < Player
  def set_name
    n = ''
    loop do
      puts 'What is your name?'
      n = gets.chomp
      break unless n.empty?

      puts 'Sorry, you must enter a value.'
    end
    @name = n
  end

  def choice
    choice = ''
    loop do
      puts 'Please choose rock, paper, scissors, spock, or lizard: '
      choice = gets.chomp
      break if Move::VALUES.include?(choice)

      puts 'Sorry, invalid choice.'
    end
    @move = Move.new(choice)
    @move_history << choice
  end
end

# Computer subclass for specific player functionality
class Computer < Player
  def set_name
    @name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choice
    choice = Move::VALUES.sample
    @move = Move.new(choice)
    @move_history << choice
  end
end

# Move class for choices and comparisons
class Move
  VALUES = %w[rock paper scissors spock lizard].freeze
  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def spock?
    @value == 'spock'
  end

  def lizard?
    @value == 'lizard'
  end

  def >(other)
    (rock? && (other.scissors? || other.lizard?)) ||
      (paper? && (other.rock? || other.spock?)) ||
      (scissors? && (other.paper? || other.lizard?)) ||
      (lizard? && (other.spock? || other.paper?)) ||
      (spock? && (other.rock? || other.scissors?))
  end

  def to_s
    @value
  end
end

# Game Orcestration Engine
class RPSGame
  attr_accessor :human, :computer, :score

  def initialize
    system 'clear'
    @human = Human.new
    @computer = Computer.new
    @number_of_wins = 10
  end

  def display_welcome_message
    puts "Hello #{human.name}, welcome to Rock, Paper, Scissors, Spock, Lizard!"
    puts "First player to win #{@number_of_wins} games wins."
    puts ''
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Goodbye #{human.name}!"
  end

  def winner?
    human.score == @number_of_wins || computer.score == @number_of_wins
  end

  def winner
    if human.score == @number_of_wins
      human.name
    else
      computer.name
    end
  end

  def display_choices
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def player_choices
    human.choice
    computer.choice
    display_choices
  end

  def display_current_scores
    puts "Current Scores: #{human.name}: #{human.score} and #{computer.name}: #{computer.score}"
    puts "The winner of the match is #{winner}" if winner?
    view_player_history if winner?
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      human.score += 1
    elsif computer.move > human.move
      puts "#{computer.name} won!"
      computer.score += 1
    else
      puts "It's a tie"
    end
  end

  def current_stats
    display_winner
    display_current_scores
  end

  def view_player_history
    moves = human.move_history.zip(computer.move_history)
    puts "\nPlayer history for the match."
    moves.each_with_index do |move, index|
      puts "Game #{index + 1}"
      puts "#{human.name}: #{move[0]} -- #{computer.name}: #{move[1]}"
    end
    puts ''
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

  def reset_scores
    human.reset
    computer.reset
    system 'clear'
  end

  def play
    display_welcome_message

    loop do
      player_choices
      current_stats
      if winner?
        break unless play_again?

        reset_scores
      end
    end
    display_goodbye_message
  end
end

system 'clear'
RPSGame.new.play
