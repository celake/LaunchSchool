=begin

Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

Problem:
input: two arrays
output: one arrau
output is elements in array one that are not in array two

Examples:
p array_diff([1,2], [1]) == [2] 
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []

Data Structures:
input: arrays

output: array

ALGORITHM:
OPTION 1:
-create `results `  empty array
- iterate over first array
  - push element to results if it is not in the second array
- return results

OPTION 2
- select tlements from first array
  - if it is not in the second array
- return new array

=end

def array_diff(arr1, arr2)
  arr1.select {|elem| !arr2.include?(elem)}
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
