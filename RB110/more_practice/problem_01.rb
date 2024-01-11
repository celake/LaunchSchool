# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

=begin
PROBLEM:
input: string
output: substring of argued string
- substring is string of characters in alphabetical order
- only lowercase characters
- there will be no empty strings
- return the first string if there are more than one of the same size

DATA STRUCTURES:
input: string
intermediate: array to hold substrings
output: string

ALGORITHM:

- create array of all substrings
- reverse order
- find first stubstring that is alphabetical
  - convert to array sort and compare with string

return first substring

=end


def longest(string)
  size = string.size
  substrings = []
  0.upto(size) do |start_index|
    start_index.upto(size) do |end_index|
      substrings << string[start_index..end_index]
    end
  end
  results = []
  substrings.each do |element|
    if element == element.chars.sort.join
      results << element
    end
  end
  results.max_by {|char| char.length}
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'