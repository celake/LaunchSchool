=begin
Write a method that takes a string with one or more 
space separated words and returns a hash that shows 
the number of words of different sizes.

Words consist of any string of characters that do not include a space.


PROBLEM:
Input: string with one or more words
Output: hash with number of words per word size
- a word is a string of characters separated by a space, but not including the space
- an empty string returns an empty hash
- order of hash key value pairs does not matter.

EXAMPLES:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

DATA STRUCTURES:
Input: String of words
intermediate: Array
Output: Hash with key as word length and value as number of times 
word of that length occurs in string. 

ALGORITHM:
- inititalize variable `words` to array from space separated words in argued string
- create empty hash `results` for output hash
- iterate over array
  - check if current element lenght is key in hash
    - if not add key and value 1
    - if yes increment value by 1
- return `results`
=end

def word_sizes(string)
  results = {}
  words = string.split(' ')
  words.each do |element|
    if results.key?(element.length])
      results[element.length] += 1
    else
      results[element.length] = 1
    end
  end
  results
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
