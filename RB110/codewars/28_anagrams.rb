=begin
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

PROBLEM:
input: string and an array of strings
output: array of strings
- output elements are all elements in argued array that are anagrams of the string
- anagram are word that contain the same letters
- return empty array if there are none

EXAMPLES:

racer  caers 
laser lacer

DATA STRUCTURES:
-input: string and array
output: array


ALGORITHM:
-create `resutls` = []
- iterate over argued array
  - elements are equal length
  - elements have the same number of letters
    - check that count of all letters is the same
      push to results
results
=end

# def anagrams(string, array)
#   results = []
#   array.each do |word|
#     if string.length == word.length
#       value = true
#       word.each_char do |char|
#         if word.count(char) != string.count(char)
#           value = false
#         end
#       end
#       results << word if value == true
#     end
#   end
#   results
# end


def anagrams(string, array)
  array.select do |word|
    false if word.length != string.length
    word.chars.all? do |char|
      word.count(char) == string.count(char)
    end
  end
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

