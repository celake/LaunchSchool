=begin

Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

PROBLEM:
input: integer
output: integer
- remove one digit from input  integer
- return the highest value from the resulting integers
- input will have at least two digits no more than 1000000

EXAMPLES:
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

DATA STRUCTURES:
input: integer
int: array of all possible combinations
output: integer



ALGORITHM:
- create `working` empty array
- number_string = input integer as a string
-create the sub-arrays

  iterate from 0 to lenght - 1  (index)
    - remove one digit at index
    - convert to integer
    - push whats left to `working` array
- find which is highest number  using max

=end

def delete_digit(number)
  working = []
  number_string = number.to_s

  0.upto(number_string.length - 1) do |count|
    new_num = ''
    0.upto(number_string.length - 1) do |index|
      if index != count 
        new_num << number_string[index]
      end
    end
    working << new_num.to_i
  end
  working.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
