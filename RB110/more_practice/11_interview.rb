=begin
Complete the greatest_product method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatest_product("123834539327238239583") // should return 3240
The input string always has more than five digits.

PROBLEM:
input: string of digits
output: integer
- greates product from five consecutive digits in argued string
- string will always be at least length 5

EXAMPELS:
p greatest_product("123834539327238239583") = 3240
p greatest_product("92494737828244222221111111532909999" == 5292
p greatest_product("02494037820244202221011110532909999") == 0

DATA STRUCUTRES:
input: string of digits
int: array of substrings lenght 5
output: integer

ALGORITHM:
-`subarrays` = []
- iterate over subarrays and create new array
  - converte each subarray to array of integer digits
  - find the product (in new array)
output max product

=end

def greatest_product(string)
  substrings = []
  0.upto(string.length - 1) do |start_index|
    substrings << string.slice(start_index, 5).chars if string.slice(start_index, 5).length == 5
  end
  substrings.map do |sub|
    sub.map! {|char| char.to_i}
    sub.reduce(:*)
  end.max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0