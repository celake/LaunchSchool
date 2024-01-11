=begin
Write a method that takes two Arrays as arguments, 
and returns an Array that contains all of the values 
from the argument Arrays. There should be no duplication 
of values in the returned Array, even if there are 
duplicates in the original Arrays.

PROBLEM:
Input: two arrays
Output: single array
- combine elements of both argued arrays in return array
- no duplicates in the return array
- assume new array
- order is least to greatest or first array second array?
- what happens when given empty arrays?
- will arrays be the same length?

EXAMPLES:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

DATA STRUCTURES:
- input: two arrays
- output: one array (new?)

ALGORITHM:
-Initialize variable `new array` to and empty array
-iterate through array 
  - check if element is in `new_array`
    - add number to array
return `new_array`
=end

def merge(arr1, arr2)
  new_array = []
  arr1.length.times do |n|
    new_array << arr1[n] if !new_array.include?(arr1[n])
    new_array << arr2[n] if !new_array.include?(arr2[n])
  end
  new_array.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]