=begin
Write a method that returns the next to last word in t
he String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain 
at least two words.

PROBLEM:
-Input: string
-Output: string
-next to last word in input string is output
-word is sequence of non-blank characters
-there will always be at least two words

EXAMPLES:
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

DATA STRUCTURES:
input: string
intermediate: array
output: string

ALGORITHM:
-convert string to array of `words`
-initialize variable `result` to next to last element of array `words`
- convert `resutl` to string

=end

def penultimate(string)
  words = string.split(" ")
  words[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'