=begin
Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the 
first number of a p sequence that your method will create. 
The method should return an Array that contains the 
same number of elements as the count argument, while 
the values of each element will be multiples of the 
starting number.

You may assume that the count argument will always 
have a value of 0 or greater, while the starting number 
can be any integer value. If the count is 0, an empty 
list should be returned.

PROBLEM:
input: two integers
output: array
- first argued integer is length of output array
- second argued integer is starting number and multiples of output array elements
- if the first argued integer is 0 an empty array is returned

EXAMPLES:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

DATA STRUCTURES:
input: integer
output: array

ALGORITHM:
- create output array `results`
- iterate over results first argued number times
  - add second argued integer * iteration number to `results`
- return results

=end

def sequence(count, value)
  results = []
  count.times do |n|
    results << value * (n + 1)
  end
  results
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []