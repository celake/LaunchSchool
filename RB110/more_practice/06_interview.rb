=begin
  The objective is to return all pairs of integers from a given array of integers that have a difference of 2.

The result array should be sorted in ascending order of values.

Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.

difference_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
difference_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
difference_two([1, 23, 3, 4, 7]) == [[1, 3]]
difference_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]

PROBLEM:
input: array of integers
output: array of two element sub arrays
- sub_arrays that have the difference of two
-sorted least to most


DATA STRUCTURES:
input: array
int: array of sub_arrays with all combinations of two elements
output: array

ALGORITHM:
-sort argued array
- `subarrays` = []
- iterate from 0 to last index [first_number]
  -iterate first_number plus 1 to last index (second_number)
    add an array [first_number, second_number]
-select all sub arrays where second_number - first_first number == 2
=end

def difference_two(array)
  array = array.sort
  size = array.size - 1
  subarrays = []
  0.upto(size) do |first_number_index|
    (first_number_index + 1).upto(size) do |second_number_index|
      subarrays << [array[first_number_index], array[second_number_index]]
    end
  end
subarrays.select do |arr|
    arr[1] - arr[0] == 2
  end
end

p difference_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p difference_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p difference_two([1, 23, 3, 4, 7]) == [[1, 3]]
p difference_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]