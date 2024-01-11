=begin
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining 
digits, you get 329175. Keep the first 2 digits fixed in place and rotate 
again to 321759. Keep the first 3 digits fixed in place and rotate again 
to get 321597. Finally, keep the first 4 digits fixed in place and rotate 
the final 2 digits to get 321579. The resulting number is called the maximum 
rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum 
rotation of that argument. You can (and probably should) use the rotate_rightmost_digits 
method from the previous exercise.

Note that you do not have to handle multiple 0s.

PROBLEM:
input: integer
output: integer
- rotate entire integer
- rotate lenght - 1 ... rotate length - 2 ... for entire integer
- return is final result

EXAMPLES:
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

DATA STRUCTUES:
input: integer
output: integer

ALGORITHM:
- create variable 'length' which is the number of digits in the argued integer
- call `rotate-rightmost_digits` length number of times 
  - each call first arguemnt is integer create by last call
  - length is second arguement
  - each call decrease `length` by `n` (n = current index of iteration)
-return integer
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

def max_rotation(number)
  length = number.to_s.length
  length.times do |d|
    number = rotate_rightmost_digits(number, length - d)
  end
  number
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
