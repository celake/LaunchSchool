=begin
Given a string that consists of some words (all lowercased) 
and an assortment of non-alphabetic characters, write a 
method that returns that string with all of the non-alphabetic 
characters replaced by spaces. If one or more non-alphabetic 
characters occur in a row, you should only have one space in 
the result (the result should never have consecutive spaces).

PROBLEM:
input: string of all lowercased words (sequences of characters separated by spaces).
output: string with all non-alphabetic characters removed
rules: 
    - one space should be inserted for a single or consecutive non-alphabetcal characters. 
    - no consecutive spaces.
    - non-alphbetic characters at begining and end of string require spaces

EXAMPLES:

  cleanup("---what's my +*& line?") == ' what s my line '

DATA STRUCTURES:
input: string of lowercase characters and non-alphbetic characters
intermediate: array
output: string of lowercase characters with single spaces
assistant array with lowercase alphabet characters

ALGORITHM: 
- create intermediate array `words` to hold words
- create an array of lowercase alphabetical characters
- iterate over argued string
  -if characters is non-alpha add to current `words` array 
    element until next characters is space or alpha character
  -if alpha character
    - if first alpha character
      create new word
    - add to current word
  -iterate over array 
    if element has non-alpha characters create a space
-convert array to string replacing non-alpha with spaces
=end

def cleanup(string)
  words = ""
  alphabet = ('a'..'z').to_a
  string.each_char do |char|
    alphabet.include?(char) ? words << char : words << " "
  end
  words.squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '
