=begin
Given a string of words separated by spaces, write a 
method that takes this string of words and returns a 
string in which the first and last letters of every word are p swapped.

You may assume that every word contains at least 
one letter, and that the string will always contain at 
least one word. You may also assume that each string contains 
nothing but words and spaces.

PROBLEM: 
input: string of words seperated by spaces
output: string 
rules: 
  - each word the last and first character need to be p swapped.
  -every word (sequence of characters separated by a space) contains at least one letter
  -argued string will contain at least one word
  - each string contains only words and spaces

EXAMPLES:
p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'

DATA STRUCTURES:
input: string of one or more words or a single characters
intermediate: array
output: string of words

ALGORITHM:
- if argued string has length of 1, return argued string
- convert argued string into array `converted_words`
- iterate over array 
  - skip iteration if element lenght is 1
  - remove first and last index in each element
  - concatinate first index value to end of element
  - prepend last index value to element
- join array into a string `new_string`

=end

def swap(string)

  return string if string.length == 1
  converted_words = string.split(' ')
  converted_words.map do |element|
    next if element.length == 1
    first, last = element.slice!(0), element.slice!(-1)
    element << first
    element.prepend(last)
  end
  converted_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin

def swap_first_last_characters(a, b)
  a, b = b, a
end

word = 'dog'

swap_first_last_characters(word[0], word[-1])

p word
 this does not work because you are passing in a reference to the character at index 0 and index -1, not the word.
 Due to local variable scoping in method definition, the method does not have access to the entire string referenced by the variable `word`
=end