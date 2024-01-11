=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

PROBLEM:
input: two arrays
output: one array
-combine input arrays
- alternate elements of each array

EXAMPLES:


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

DATA STRUCTURES:
input: arrays
output: array

ALGORITHM:
- combine each indext into sub arrays
- flattan array

=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']