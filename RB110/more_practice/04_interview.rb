=begin
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

PROBLEM:
input: array of integers
ouput: array of integers
- output is two integers from the argued array that are closest together in value
--always at least two values?  negative numbers? 

EXAMPLES:


DATA STRUTURES:
input: array o
intermediate: array of subarrays with 2 elements
output: array with two elements

ALGORITHM:
- `sub-arrays` array of sub-arrays with two values  (each)slice?
  - iterate form 0 to length |first_number_index|
    -iterate form start index to lenght |secont_number_index|
      [array[first], array[second]]

- find the minimum by the absolute value of the differnece of element1 and element2
  -interate over each sub array and find the abs value of difference
  - find the mimum
=end

def closest_numbers(array)
  sub_arrays = []
  size = array.length - 1
  0.upto(size) do |first_number|
    (first_number + 1).upto(size) do |second_number|
      sub_arrays << [array[first_number], array[second_number]]
    end 
  end
  sub_arrays.min_by do |element|
    (element[0]-element[1]).abs
  end
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]