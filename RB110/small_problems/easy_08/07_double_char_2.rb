=begin
Write a method that takes a string, and returns a 
new string in which every consonant character is 
doubled. Vowels (a,e,i,o,u), digits, punctuation, 
and whitespace should not be doubled.

PROBLEM:
input: string
output: string
-returned string should have consonants doubled

EXAMPLES:
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

DATA STRUCTURES:
input: string
output: string
assistant: array of consonants upper and lowercase 

ALGORITHM:
- create empty string `double`
- create array `consonants` of upper and lowercase consonants
  - create array with a-z and A-Z then delete vowels
- iterate over argued string
  - if character is in `consonants` 
    - add charachter to `double` twice
  -otherwise add character to `double`
=end

def double_consonants(string)
  double = ''
  consonants = ('a'..'z').to_a + ('A'..'Z').to_a
  vowels = %w(a e i o u A E I O U)
  string.each_char do |char|
    if consonants.include?(char) && !vowels.include?(char)
      double << char * 2
    else
      double << char
    end
  end
  double
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""