require 'pry'

# Development of extra features using PEDAC #
#############################################

=begin
p joinor helper method

PROBLEM:
Input: array
Output: string
- output string is each element separated by a comma by default, except last two elements
-last two elements are separated by `or` by default
- when the argued array only has two elements there is no comma after the first array element in the strin
- there are optional arguments for separator and final conjunction word.

EXAMPLES:

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

DATA STRUCTURES:
input: array
output: string

ALGORITHM:
-if length of argured array is 2
  - use conjunction and no separator
-else
   - join array elements 0 .. -2
  - concatinate separator and conjuction
  - concatenate final element in array    

=end

def joinor(array, separator = ", ", conjuction = "or")
  if array.length == 2
    "#{array[0].to_s} #{conjuction} #{array[1].to_s}"
  else
    array.join(separator) + "#{separator}#{conjuction} "+ array[-1].to_s
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"



=begin
Problem:
input: hash and array of sub-arrays
output: integer representing hash key
- winning set equals sub-array values in hash keys
- if two of the hash keys in a set are marked with 'X' computer marks the last with 'O'


EXAMPLES:
WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                     [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                     [[1, 5, 9], [3, 5, 7]]              # diagonals

                     
board1 = {1=>"X", 2=>" ", 3=>"X", 4=>" ", 5=>"O", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
choose_square(board1, WINNING_CONDITIONS) == 2
board2 = {1=>"X", 2=>"O", 3=>"X", 4=>"X", 5=>"O", 6=>" ", 7=>" ", 8=>" ", 9=>" "} 
choose_square(board2, WINNING_CONDITIONS) == 7

DATA STRUCTURES:
input hash and array with sub-arrays
output: integer

ALGORITHM:
- iterate through argued array
  -iterate through sub-array
    -check each element of sub-array to see if 2 elements = 'X' in hash
      - create an array of all pairs in sub-array
      - check if both pairs == 'X' in hash
        - check if element not in pair is ' ' in hash
          -return element if it is
     
=end

def computer_choose_square(board, lines)
  moves = lines.map do |line|
    #binding.pry
    if board.values_at(*line).count('X') == 2
      board.select{|k,v| line.include?(k) && v == ' '}.keys.first
    else
      nil
    end
  end
  if moves.all?(nil)
    nil
  else
    moves.select {|item| item != nil}.sample
  end
end



WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                     [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                     [[1, 5, 9], [3, 5, 7]]              # diagonals

                     
board1 = {1=>"X", 2=>" ", 3=>"X", 4=>" ", 5=>"O", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
p choose_square(board1, WINNING_CONDITIONS) #== 2
board2 = {1=>"X", 2=>"O", 3=>"X", 4=>"X", 5=>"O", 6=>" ", 7=>" ", 8=>" ", 9=>" "} 
p choose_square(board2, WINNING_CONDITIONS) #== 7