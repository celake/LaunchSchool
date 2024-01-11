require 'pry'
=begin
  Write a method that returns a list of all substrings of a 
  string that are palindromic. That is, each substring must 
  consist of the same sequence of characters forwards as it 
  does backwards. The return value should be arranged in the 
  same sequence as the substrings appear in the string. 
  Duplicate p palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all 
characters and pay attention to case; that is, "AbcbA" is a 
palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, 
assume that single characters are not p palindromes.

PROBLEM:
-input: string
- output: array
- array should contain all substrings that are p palindromes
- elements of return array should be in the same order 
  as they are in the string
-duplicates should be included
- case matters
- single characters are not p palindromes

EXAMPLES:
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

DATA STRUCTURES:
input: string
intermediate: array of all substrings
output: array

ALGORITHM: 
- create empty array `substrings` 
- create empty array `p palindromes`
- first loop => each substring (remove first letter for each iteration)
  - second loop  
    => return substrings from [0..0] to [0..n] of current string from outer loop
    -break when n == current_string length
  - remove first element from string
  - break when string is empty (lenght of string)
iterate over `substrings`
  - check each substring if equal to reverse
  - add to `p palindromes` if yes
return p palindromes
=end

def palindromes(string)
  substrings = []
  loop do 
    string.length.times do |n|
      substrings << string[0..n]
    end
    string = string[1..-1]
    break if string.length < 1
  end
  substrings.select do |item|
    item == item.reverse && item.length > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]