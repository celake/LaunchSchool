=begin
Write a method that takes an Array as an argument, 
nd returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the 
original Array, respectively. If the original array 
contains an odd number of elements, the middle 
element should be placed in the first half Array.

PROBLEM:
input: single array
output: array with two nested arrays
- return a two nested arrays that are the argued array split in half
- if the argued array length is odd, the middle element should be in first array
- if argued array has one number return array will still have two sub arrays, the second being an empty array
- if argued array is empty, return array has two empty subarrays
- element order is maintained

EXAMPLES:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

DATA STRUCTURES:
input: array
output: nested array

ALGORITHM:
- Initialize variable `new_array` to an array with two sub arrays
- iterate over argued array
  -if index is argued array length/2 
    put in first array
  -else
    put in second array
- return `new_array`
=end

def halvsies(array)
  new_array = [[], []]
  half = array.length.odd? ? (array.length/2) + 1 : array.length/2
  array.each_with_index do |element, index|
    index < half ? new_array[0].push(element) : new_array[1].push(element)
  end
  new_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
