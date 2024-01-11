=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.


PROBLEM:
input string
output: hash with word size as key and number of words at that size as value.
- words are sequences of characters separated by spaces

EXAMPLES:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

DATA STRUCTURES:
input: string
intermediate: array
output: hash

ALGORITHM:
- create `words` array with argued string words as elements
- create `results` empty hash
- iterate over words
  - add key (word lenght) += value to `results`
- return `results`

=end

def word_sizes(string)
  words = string.split
  results = Hash.new(0)
  words.each { |word| results[word.size] += 1}
  results
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}