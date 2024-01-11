=begin
Sort the given strings in alphabetical order, case insensitive. For example:

["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

PROBLEM:
input: array of strings
output: array of strings same lenght
- case insensitive
- output array is input sorted alphabetically

EXAMPLES
["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

DATA structures:
input: array
output: array

ALGORITHM:
- sort each array by the lowercase array
=end

def sortme(array)
  array.sort_by {|element| element.downcase}
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]
