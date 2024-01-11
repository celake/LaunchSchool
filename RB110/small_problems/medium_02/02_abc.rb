=begin
A collection of spelling blocks has two letters per block, as shown in this list:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not 
  use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled 
from this set of blocks, false otherwise.

PROBLEM:
input string
output: boolean
- returns true if string can be spelled using only one letter from each letter pair
- returns false if this cannot be done
- not case sensitive
-can same letter be used more than once?  (assuming no)

EXAMPLES:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURES:
-input string
-output: boolean
-assistant: array of sub-arrays

ALGORITHM:
- create array `pairs` that has hashes of each pair of letters for comparison
- create `chars` array that is argued string uppercase characters as elements
- iterate over `chars'
  iterate over hashes in `pairs`
  - if current char is key, add 1 to value
-create array of sum of values for each has
  - if any are greater than 1 return false
  - otherwise return true. 

=end


def block_word?(string)
  pairs = [{'B' => 0, 'O' => 0}, {'X' => 0, 'K' => 0}, {'D' => 0, 'Q' => 0}, 
         {'C' => 0, 'P' => 0}, {'N' => 0, 'A' => 0}, {'G' => 0, 'T' => 0},
         {'R' => 0, 'E' => 0}, {'F' => 0, 'S' => 0}, {'J' => 0, 'W' => 0},
         {'H' => 0, 'U' => 0}, {'V' => 0, 'I' => 0}, {'L' => 0, 'Y' => 0},
         {'Z' => 0, 'M' => 0}]
  chars = string.upcase.chars
  chars.each do |char|
    pairs.each do |hsh|
      if hsh.keys.include?(char)
        hsh[char] += 1
      end
    end
  end
  pairs.each do |hsh|

    if hsh.values.sum > 1
      return false
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
