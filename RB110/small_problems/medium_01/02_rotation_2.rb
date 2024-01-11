=begin
Write a method that can rotate the last n digits of a number. 

PROBLEM:
- input: two numbers
- output: integer
- second argured value determines number of final digits of 
  first argued number to reverse
- if second argument is `1` no digits are rotated

EXAMPLES:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

DATA STRUCTURES:
input: integers
output: integer

ALGORITHM
- convert first argued integer to a string and then array
- remove index `second argued integer` to end of array
- pass above selection into rotation method
- add return from `rotation` method to the original array
- convert array to string
- convert string to integer
=end

def rotate(array)
  results = array.dup
  results.push(results.shift)
end

def rotate_rightmost_digits(number, digits)
  first = number.to_s.chars[0..(-digits - 1)]
  last = number.to_s.chars[-digits..-1]
  result = first + rotate(last)
  result.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917