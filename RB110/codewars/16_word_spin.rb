=begin

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

PROBLEM:
input: string of one or more words
output: string
-same string?
-letters are reversed in word with lenght > 4


DATA STRUCTURES:
input: string
int: array
output: string

ALGORITHM:
- `words` array of space separated words in argued string
- iterate over words
  - check if each word is five or more letters
    - reverse it
    otherwise 
      word
- convert new array to string separated by spaces
=end

def spinWords(string)
  words = string.split(' ')
  results = words.map do |word|
    if word.length > 4
      word.chars.reverse.join
    else
      word
    end
  end
  results.join(' ')
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords('test') == 'test'
