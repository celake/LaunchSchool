=begin
  # Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

PROBLEM:
input: array of integers
output: single integer minimum sum of 5 consectutive integers
- if input array is less in length return nil


EXAMPLES:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

DATA STRUCTURES:
input:  array
output: integer

ALGORITHM:
- if argued array is less than length 5, return nil
- create subarrays = []
- create all subarrays of length 5 with each-cons
  - push into `subarrays`
- find the min value based on the sum of the elements

=end

def minimum_sum(array)
  return nil if array.length < 5
  subarrays = []
  array.each_cons(5) {|sub| subarrays << sub}
  subarrays.min_by {|element| element.sum}.sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10