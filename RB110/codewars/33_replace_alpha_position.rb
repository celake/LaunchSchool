=begin

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

PROBLEM:
input: string
output: string of numbers
- aphabetical characeters are replaced with position in alphabet
- special characters are ignored
- lowercase and uppercase are the same positions
- if no alpha characters are present return empty string

DATA STRUCTURES:
input: string
output:string
ass: alphabet

ALGORITHM:
- create `alpha` array of lowercase letters
- create `results` as empty array
- remove all non- alpha characters from the input string
- return empty string if the string is empty
- downcase all charactes in argued string
- iterate over each character
  - push index + 1 of character in alpha array to the `results` array
- join results with a space

=end

def alphabet_position(string)
  alpha = ('a'..'z').to_a
  string = string.downcase.delete('^a-z')
  return string if string == ''
  results = []
  string.each_char do |char|
    position = alpha.index(char) + 1
    results <<  position
  end
  results.join(' ')
end


p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
