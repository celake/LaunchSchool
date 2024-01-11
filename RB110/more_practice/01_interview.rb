=begin
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

PROBLEM:
input: array of numbers
output: array of numbers
- all numbers except current number that are less in value
- duplicate nums only count once

EXAMPLES:
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

DATA STRUCTURES:
input: array of numbers
output: array of the same size


ALGORITHM:
- create new array `results`
- iterate over each index (target number)
  - iterate over each index (number for comparison)each with object
    - if current index not equal to the target number index
      - add to the array if it's not already there and it's less than the target number
  - push size of the array to results

=end

def smaller_numbers_than_current(array)
  results = []
  0.upto(array.length - 1) do |current_number_index|
    smaller_numbers = []
    0.upto(array.length - 1) do |comparison_number_index|
      if current_number_index != comparison_number_index
        if array[current_number_index] > array[comparison_number_index]
          smaller_numbers << array[comparison_number_index] unless smaller_numbers.include?(array[comparison_number_index])
        end
      end
    end
    results << smaller_numbers.size
  end
  results
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]