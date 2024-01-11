=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

PROBLEM:
input: string of digits
output: integer
- greates product of five digits
- digts are consectutive
- input string always has more than 5 digits
-? more than one group of 5 has the highest value? return first?


"123456" 12345 23456

DATA STRUCTURES:
input: string
int: array of sub-arrays which are 5 digit numbers
output: integer

Algorithm:
- create `digits` = []
- create all consecutive subarrays of length 5
  - each_cons(5) |subarray\  [[1, 2, 3, 4, 5], [2, 3, 4, 5,6]]
    - push to  `ditits` is each character of the subarray as an integer
- find the maximum by product of each digit (reduce(:*))

=end

def greatest_product(string)
  digits = []
  string.chars.each_cons(5) do |subarray|
    digits << subarray.map {|elem| elem.to_i}
  end
  result = digits.max_by {|sub| sub.reduce(:*)}
  result.reduce(:*)
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

