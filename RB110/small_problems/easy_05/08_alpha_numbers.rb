=begin
  Write a method that takes an Array of Integers between 0 and 19, 
  and returns an Array of those Integers sorted based on the English
   words for each number:

  zero, one, two, three, four, five, six, seven, eight, nine, 
  ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, 
  eighteen, nineteen

PROBLEM:
Input: array of integers between 0 and 19.
output: array of strings the values of which are the english words for the integer values
  - numbers are between zero and nineteen
  - sort the numbers based on their English word alphabetical order

EXAMPLES:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
  
DATA STRUCTURES:
Assistant: Hash? with number word 
Input: array of integers 0 - 19
intermediate: Array of numbers in English words
Output: Array of integers with same input integers sorted 

ALGORITHM:
-initialize variable `result` to empty array
- initialize variable `words` to empty array
- initialize variable `numbers_key` to hash with each number as key and english equivalent as value
- iterate over argued array
  - check each element in `numbers_key` hash and add value to `words` array
- sort words array 
- iterate over `words` array and add each key for the element to the `results` array
- return `results`
=end

def alphabetic_number_sort(numbers)
  result = []
  words = []
  numbers_key = %w(zero one two three four five six seven eight nine ten eleven twelve 
                    thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  numbers.each do |num|
    words << numbers_key[num]
  end
  words.sort!
  words.each do |word|
    result << numbers_key.index(word)
  end
end




 p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]