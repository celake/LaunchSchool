=begin

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
Rules
 	# 1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

PROBLEM:
input string
output: array of strings
-elements of the array or the string with one letter capitalized
- the capital letter moves one index per element
- ? ara the input strings always in lowercase. 
- spaces should be in array elements but do not count as the next letter

EXAMPLES:
DATA STRUCTURES:
input: string
output: array
ass

"two words"
0 , 1, 2, 4, 5, 6

ALGORITHM:
- create `alpha` which is array of characters a-z 
- `results` is an empty array
- iterate string length - 1 times |index|
  -`new_word` = ''
  -if string at index is alphabetic
    -downcase stirng
    -upcase at `index`
  -push new_word ot `results`
-results
=end

def wave(string)
  alpha = ('a'..'z').to_a
  results = []
  0.upto(string.length - 1) do |index|
    if alpha.include?(string[index])
      new_word = string.downcase
      new_word[index] = string[index].upcase
      results << new_word
    end
  end
  results
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
