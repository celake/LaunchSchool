=begin
Write a method that takes one argument, 
a string, and returns a new string with 
the words in reverse order.

PROBLEM:
Input: string
Output: string
-output string words are in reverse order
-word is a consecutive characters separated by a space
-Empty string returns empty string
-string with only spaces returns empty string

EXAMPLES:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

DATA STRUCTURES:
input: string
intermediate: array
output: string


ALGORITHM:
- convert argued string into array `words`
- iterate over `words`
  - reverse word order
-convert array with reversed words to string

=end

def reverse_sentence(string)
  words = string.split(' ')
  words.each_with_object([]) { |word, arr| arr.prepend(word) }.join(' ')
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''