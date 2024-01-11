require 'pry'
=begin
Write a method that returns a list of all substrings 
of a string. The returned list should be ordered by 
where in the string the substring begins. This means 
that all substrings that start at position 0 should 
come first, then all substrings that start at 
position 1, and so on. Since multiple substrings 
will occur at each position, the substrings at a 
given position should be returned in order from 
shortest to longest.

You may (and should) use the leading_substrings method 
you wrote in the previous exercise.

PROBLEM:
Input: string of characters without spaces
Output: array
- return all substrings in the string
- each group of substrings begining at a new index should be ordered shortest to longest

EXAMPLES: 
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA STRUCTURES: 
input: string
output: array

ALGORITHM:
- create empty array `substrings`
- loop over string
  run leading_substrings method
  remove first character
  break when string length is one
return `substrings`
=end

def leading_substrings(string)
  sub_strings = []
  counter = 0
  loop do 
    sub_strings << string[0..counter]
    counter += 1
    break if counter == string.length
  end
  sub_strings
end

def substrings(string)
  substrings = []
  loop do 
    substrings << leading_substrings(string)
    string = string[1..-1]
    break if string.length == 0
  end
  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

