=begin

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Problem:
input: integer
output: integer
- add the digits recusivelty until sum is single digit
- positive digits only


digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

Data Structures:
input: integer
int: array of digits
output: integer

ALORITHM:
- `current number`  is equal to input integer
- loop 
  - convert current number to string
  - convert string to array of characters 
  - convert each character to an integer
  - find sum of array of integers
  - check if length of sum as string is 1
    - return sum
  - otherwise
   - current number  = sum

=end

def digital_root(number)
  current_number = number
  loop do
    current_number = current_number.to_s
    digits = current_number.chars.map {|char| char.to_i}
    sum = digits.sum
    return sum if sum.to_s.length == 1
    current_number = sum
  end
end

p digital_root(16) == 7 
p digital_root(456) == 6
