=begin
  Write a method that computes the difference between the 
  square of the sum of the first n positive integers and 
  the sum of the squares of the first n positive integers.

PROBLEM:
input: integer `n` which is largest number in sequence 1..`n`
output: integer
  - output is sum of 1..n squared minus sum of 1..n squared

EXAMPLES:
p sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

DATA STRUCTURES:
input: integer
output: integer

ALGORITHM:
- initialize sum to:
  iterate over 1..`n` as array
  sum all numbers
  square the result
- initalize `squares` to:
  - iterate over 1..'n' as an array
    - square each element
    - sum all squares
- return sum - squares
=end

def sum_square_difference(number)
  sum = (1..number).to_a.sum ** 2
  squares = (1..number).to_a.map {|num| num**2}.sum
  sum - squares
end

p sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150