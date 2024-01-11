=begin
ou are given array of integers, your task will be to count all p pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more p pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 p pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

PROBLEM:
input: array of integers
output: integer count of number of p pairs of integers in array
- count p pairs of numbers in array
- if array lenght is less than 2 return 0

EXAMPLES:
[1, 2, 5, 6, 5, 2]  -->  2
[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4

DATA STRUCTURES:
input: array of integers
intermediate: hash?
output: integer

ALGORITHM:
- create `counts` hash with default value of zero
- create `total` variable = 0
- iterate over argued array
  - add element to array and increase value by 1
- create array of values
  - iterate over each value
    if value mod 2 is 0
      - add value / 2 to total

=end

def pairs(array)
  total = 0
  counts = Hash.new(0)
  array.each do |num|
    counts[num] += 1
  end
  counts.values.each do |num|
    if num % 2 == 0
      total += (num / 2)
    elsif num > 1 
      total += ((num - 1) / 2)
    end
  end
  total
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
