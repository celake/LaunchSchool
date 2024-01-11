=begin
Write a method that takes an Array of integers as input, 
multiplies all the numbers together, divides the result
by the number of entries in the Array, and then 
the result rounded to 3 decimal places. 
Assume the array is non-empty

PROBLEM:
input: array of integes
Output: float rounded to three decimals
- multiply all elements of array
- divide the result by the length of the array
- format the array
- input will not be an empty array

EXAMPLES:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

DATA STRUCTURES:
input: array of integers
output: float

ALGORITHM:
-iterate over all elements of the argued array
  multply each element by the next element
-divide result from multiplication by lenght of array
=end

def show_multiplicative_average(array)
  result = array.reduce(:*)/array.length.to_f
  formatted_result = format(%(%.3f), result)
  puts "The result is #{formatted_result}"
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667