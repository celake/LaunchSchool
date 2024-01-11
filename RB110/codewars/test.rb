
# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.
=begin
PROBLEM:
input: string
output: string
- output longest substring which is in alphabetical order

DATA STRUCTURES:
input: string
output: string

ALGORITHM:
- create array with all combinations of string 'sub_strings'
- iterate over array
  - if element == element sorted
    - add to `sub_strings`
 -find element in `sub-strings` that is longest
=end

# def longest(string)
#   substrings = []
#   size = string.length - 1
#   0.upto(size) do  |first_index|
#     first_index.upto(size) do |last_index|
#       substrings << string[first_index..last_index]
#     end
#   end
#   alphabetical = substrings.select do |element| 
#                   element.size < 2 || element.chars == element.chars.sort
#                   end
#   alphabetical.max_by { |element| element.length }
# end


# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') ==  'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

######

# Re-order the characters of a string, so that they are 
#concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!
# The input is restricted to contain no numerals and only words containing the english alphabet letters.
=begin
PROBLEM:
input: string
output: string
- output string is alphabetical and characters that appear first are sorted first
- case insesitive so B = b
- spaces and non alphabetical characters should be removed
EXAMPLES:

DATA STRUCTURES: 
input: string
output: string
assistant: array of lowercase alphabetical characters

ALGORTHIM:

- create variable `results` initialized to empty string
- create array `letters` of lowercase letters
- create `lowercase_string` of argued string all lower case
- iterate over letters 
  - if argued string includes current letter 
    - current index of argued string in results
=end

# def alphabetized(string)
#   results = ''
#   lower = ('a'..'z').to_a
#   upper = ('A'..'Z').to_a
#   letters = lower.zip(upper)
#   lowercase_string = string.downcase
#   letters.each do |letter_array|
#     lowercase_string.chars.each_with_index do |char, index|
#       if char == letter_array[0] || char == letter_array[1]
#         results << string[index]
#       end
#     end
#   end
#   results
# end

# p alphabetized("The Holy Bible") == "BbeehHilloTy"
# p alphabetized("!@$%^&*()_+=-`,") == ""
# p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"


# def all_substrings(string)
#   all_substrings = []
#   0.upto(string.length - 1) do |start_index|
#     start_index.upto(string.length - 1) do |end_index|
#       all_substrings << string[start_index..end_index]
#     end
#   end
#   all_substrings
# end

# string = 'abcdefghi'
# p all_substrings(string)


# def get_all_substrings1(string)
# substrings = []

# final_index = string.size - 1

# (0..final_index).each do |start_index| # outer loop

#   max_length = string.size - start_index

#   (1..max_length).each do |current_length| # inner loop
#     p current_length
#     substrings << string[start_index, current_length]
#   end

# end

# substrings
# end

# p get_all_substrings1('abcde') 
# => ["a", "ab", "abc", "abcd", "abcde", "b", "bc", "bcd", "bcde", "c", "cd", "cde", "d", "de", "e"]




# Given an array of strings made only of lower case letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times on all strings but not 4 times, you need to include that character 3 times in the final answer

=begin
PROBLEM:
input array of strings
output: array of characters
- characters in the output array are each character that occurs in all strings
-returns an empty array if there are no common characters


EXAMPLES:
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccddddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

DATA STRUCTURES:
input:array 
output: array

= begin
ALGORITHM:
- create `results` variable initialized to an empty array
- create `sorted` variabvle initialized to argued array sorted by length
- iterate over the characters of the first word in `sorted` (the shortest string)
  - if the character is in the second and third words in the `sorted` array
    -add character to the results array
    -remove the character from the second and third word
- return the results array
=end

def common_chars(array)
  results = []
  sorted = array.sort_by { |elem|  elem.length }
  sorted[0].chars.each do |char|
    if sorted[1].include?(char) && sorted[2].include?(char)
      results << char
      sorted[1].sub!(char, '')
      sorted[2].sub!(char, '')
    end
  end
  results
end


p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccddddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []