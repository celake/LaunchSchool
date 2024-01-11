=begin

Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

PROBLEM:
input: string
output: number
-input string is only alpha characters and numbers
-case insensitive
- return the count of chararcters that occur more than once
-no spaces? 

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

DATA STRUCTURES:
input: string
int: hash
output: integer

ALGORITHM:
`counts` initialized to empty hash
`string` reassign to all lowercase string
- iterate over the string characters
  - add the character to hash  as key and increment the value by 1
-create an array from the values
-select all the values over 1
- return the length of the array of selected values
=end

def duplicate_count(string)
  return 0 if string.length == 0
  counts = Hash.new(0)
  string = string.downcase
  string.each_char do |char|
    counts[char] += 1
  end
  counts.values.select {|elem| elem > 1}.length
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
