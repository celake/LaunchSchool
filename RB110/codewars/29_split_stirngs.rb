=begin

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').


PROBLEM:
input: string
ouput: array of strings two characters long
- split the argued stirng into pairs
- if string is an odd number add an undescore to the last string

EXAMPLES:

DATA STRUCUTRES:
input string of charate3rs
output: array

ALGORITHM:
- if string is empty return empty array
- results is empty array
- if string is odd
  - add `-` to string
-convert string to array of characters called `chars`
- iterate over the string 
  - push two character array joined to `results`


=end

def solution(string)
  return [] if string == ""
  if string.length % 2 == 1
    string << '_'
  end
  results = []
  string.chars.each_slice(2) do |chars|
    results << chars.join
  end
  results
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
