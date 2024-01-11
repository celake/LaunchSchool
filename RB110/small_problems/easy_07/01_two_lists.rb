=begin
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both 
Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, 
and that they have the same number of elements.

PROBLEM:
input: two arrays
output: new array
- new array contains elements of argued arrays alternating elements 
- arrays are non-empty
- arrays have the same number of arguments 
- arrays can have different data types

EXAMPLES:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

DATA STRUCTURES:
input: two arrays
output: on array

ALGORITHM:
-create variable `combined` initialized to empty array
- iterate array.length times over arrays
  -add element at current index of first array to `combined`
  -add element at current index of second array to combined
retrun combined
=end

# def interleave(arr1, arr2)
#   combined = []
#   arr1.length.times do |n|
#     combined << arr1[n]
#     combined << arr2[n]
#   end
#   combined
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
