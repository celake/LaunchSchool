=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are p swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

PROBLEM:
input: string
output: string
- words are characters separated by spaces
- each word the first and last letter are p swapped
- output string is different than input string?
- string input only has words and spaces
- input string has at least one word

EXAMPLES:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

DATA STRUCTURES:
input: string
intermediate: array
output: string

ALGORITHIM:
- create array `words` which is argued string words as elements
- iterate over `words`
  - switch the first and last character of the current word
convert words to string
=end

def swap(string)
  words = string.split(' ')
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
