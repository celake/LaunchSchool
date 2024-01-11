=begin
Write a method that takes two Array arguments in which 
each Array contains a list of numbers, and returns a new 
Array that contains the product of every pair of numbers 
that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

PROBLEM:
Input: two arrays
Output: new array
- output contains product of all pairs between two array elements
- duplicate pairs are included in output
- both input arrays are non-empty

EXAMPLES:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

DATA STRUCTURES:
Input: arrays
intermediate: array with sub-array of all pairs
Output: array
helper function - get all pairs?

ALGORITHM:
-create new array `pairs` that has sub array of all pairs of argued array elements
-create new array `results` that is empty
-iterate over pairs array
  - multiply elements in each sub-arry 
  - add product of multiplication to `results`
sort resutls
=end

def multiply_all_pairs(arr1, arr2)
  pairs = []
  arr1.each do |elem1|
    arr2.each do |elem2|
      pairs << elem1 * elem2
    end
  end
  pairs.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
