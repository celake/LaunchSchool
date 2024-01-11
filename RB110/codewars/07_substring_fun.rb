=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a 
new word which should be returned as a string, where n is the 
position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

PROBLEM:
input: array with string elements
output: string, single word
- output string is concatination of character at array index of each word

EXAMPLES:
p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

DATA STRUCTURES:
input: array
output: string

ALGORITHM:
- create variable `word` set to empty string
-iterate over argued array
  - add letter at current element index to `word`
-return `word`
=end

def nth_char(array)
  word = ''
  array.each_with_index {|element, index| word << element[index]}
  word
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
