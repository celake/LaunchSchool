=begin
Write a program that, given a natural number and a set of one or more other numbers, can find the sum of all the multiples of the numbers in the set that are less than the first number. If the set of numbers is not given, use a default set of 3 and 5.

For instance, if we list all the natural numbers up to, but not including, 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

PROBLEM:
inputs: 0 to infinate numbers in class converted to an array, one number method argument
output: on integer
- for each number in an sequence from 1 to number -1 if any of the numbers in the array are multiples, then that number is added to the sum. 


ALGORITHM 
iterate over range from 1 to number
  - check each value in arry, if it is a multiple then add that to the output array. 
sum of items in the output array
=end

class SumOfMultiples
  def initialize(*set)
    @set = (set.size > 0) ? set : [3, 5]
  end

  def self.to(num)
    SumOfMultiples.new().to(num)
  end

  def to(num)
    (0...num).to_a.select do |n|
      @set.any? {|s| n % s == 0}
    end.sum
  end

  
end