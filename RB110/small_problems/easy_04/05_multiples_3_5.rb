=begin
Write a method that searches for all multiples of 3 or 5 
that lie between 1 and some other number, and then computes 
the sum of those multiples. For instance, if the supplied 
number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

P: 
input: integer greater than 1
output: integer
explicit: input is always greater than 1

E:

D:
input and output = integer
array to hold multiples

A:
- create variable initialized to empty array
- create a variable for final output initialized to 0
- create range from 1 to input num
- iterate over range and check if 3 and 5 are multiples
  - add to multiples array if true
- iterate over `multiples` array 
  - increment sum variable with each array element's value
-return sum
=end


def multisum(num)
  numbers = (1..num).to_a
  multiples = numbers.select do |n|
   n % 3 == 0 || n % 5 == 0
  end
  multiples.sum
end




p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168