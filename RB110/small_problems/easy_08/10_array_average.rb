=begin
Write a method that takes one argument, an array containing 
integers, and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always 
be positive integers. Your result should also be an integer.

Don't use the Array#sum method for your solution - see if 
you can solve this problem using iteration more directly.

PROBLEM:
input: array
output: integer
- output is sum of all elements in array

EXAMPLES:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

DATA STRUCTURES:
input: array
output: integer

ALGORITHM
-interate over argued array
  - sum each element
-divide result by length of array

=end

def average(array)
  array.reduce(:+)/array.length  # add .to_f for float division
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
