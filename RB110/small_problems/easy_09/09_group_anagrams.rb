=begin
  Write a program that prints out groups of words that are anagrams. 
  Anagrams are words that have the same exact letters in them but 
in a different order. Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
  
PROBLEM:
input: array of strings
output: array of arrays of strings
- each output array will contain strings that are anagrams
- anagrams have the all the same letters in different order

EXAMPLES:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p anangrams(words) 
#["demo", "dome", "mode"] 
#["neon", "none"]

DATA STRUCTURES:
input: array
output: array with sub-arrays

ALGORITHM:
- create empty array `anagrams`
- iterate over argued array   
  - take first element 'demo'  
    - 'demo'.includes(n) 
      - if all letters are the same put in new array 
  - remove first element of array
-iterate over `anagram` array and print sub arrays
=end

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
p anagrams(words) 
#["demo", "dome", "mode"] 
#["neon", "none"]