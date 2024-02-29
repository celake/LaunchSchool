=begin
Write a program that, given a word, computes the Scrabble score for that word.

Letter Values:

1 => A, E, I, O, U, L, N, R, S, T
2 => D, G
3 => B, C, M, P
4 => F, H, V, W, Y
5 => K	
8 => J, X
10 => Q, Z

Sum the values of all the tiles used in each word. For instance, lets consider the word CABBAGE which has the following letters and point values:

3 points for C
1 point for each A (there are two)
3 points for B (there are two)
2 points for G
1 point for E
Thus, to compute the final total (14 points), we count:

3 + 2*1 + 2*3 + 2 + 1
=> 3 + 2 + 6 + 3
=> 5 + 9
=> 14

PROBLEM:
input: string or nil
output: integer
integer is total of points for each letter (letter scores above)
nil input scores zero
whitespace scores zero
characters are case insensitive

EXAMPLES: (test cases)

DATA STRUCTURES:
input: string or nil
output: integer
assistant:  hash? 

ALGORITHM:
- `scores` hash for character scores
- gaurd clause if nil or not characters then return 0
- convert argued word into uppercase
- `letters` is array of letters in argued word
- iterate over each letter
  - iterate over hash
    - if letter is in values 
      add key to `scores`
return `scores`
=end


class Scrabble
  def initialize(word)
    @word = word
  end
  SCORES = {1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 
            2 => ['D', 'G'], 
            3 => ['B', 'C', 'M', 'P'], 
            4 => ['F', 'H', 'V', 'W', 'Y'], 
            5 => ['K'], 
            8 => ['J', 'X'], 
            10 => ['Q', 'Z']}
  
  def score
    return 0 if @word == nil
    word = @word.upcase
    word.chars.map do |letter|
      letter_score = 0
      SCORES.each {|key, value| letter_score = key if value.include?(letter) }
      letter_score
    end.sum
  end

  def self.score(word)
    self.new(word).score
  end
end