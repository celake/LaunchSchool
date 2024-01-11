=begin
Write a method that takes one argument, a string 
containing one or more words, and returns the given 
string with words that contain five or more 
characters reversed. Each string will consist of 
only letters and spaces. Spaces should be included 
only when more than one word is present.

PROBLEM:
input: string
output: string
- words in argued string reversed if more than 4 characters
- spaces include if more than one word is present
- words are consecutive characters separated by spaces
- non-alphabetic characters?

EXAMPLES:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA STRUCTURES
input: string
intermediate: array
output:string

ALGORITHM:
- transform argued string into array `words` 
- create array `results`
- iterate over `words`
  - if element is > 4
    - reverse
    - add to `results`
  -otherwise
    -add to 'results'
- convert results to string

=end

def reverse_words(string)
  words = string.split
  results = []
  words.each do |word|
    if word.length > 4
      results << word.reverse
    else
      results << word
    end
  end
  results.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS