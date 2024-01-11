=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.


PROBLEM:
input: string
output: boolean
- every letter of the alphabet occurs at least once in argued string 
- case insensitive
- non - alphabetic characters are not included

DATA STRUCTURES:
input: string
output: boolean
assintant: array of the lowercase letters

ALGORITHM:
-create `letters` array of lowercase letters
-remove all non- alpha characters
- downcase string
- iterate over `letters`  
  check if each letter is in the argued string
  return true if they are

=end

def pangram?(string)
  letters = ('a'..'z').to_a
  string = string.downcase.delete('^a-z')
  letters.all? {|letter| string.include?(letter)}
end


p pangram?("The quick brown fox jumps over the lazy dog.") == true

p pangram?("This is not a pangram.") == false