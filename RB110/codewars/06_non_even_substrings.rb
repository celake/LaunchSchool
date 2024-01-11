=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

PROBLEM:
input: string of integers
output: integer
- integer is number of substrings that are odd numbers


EXAMPLES:
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

DATA STRUCUTURES:
input: string
output: integer
assistant: array of all possible substrings of argued string

ALGORITHM:
- create array `numbers` whose elements are all sub-arrays of argued string
- convert all elements of `numbers` to integer
- iterate over `numbers`
  - select element if it is odd
return length of selected elements
=end

def solve(string)
  numbers = []
  size = string.length
  1.upto(size) do |n|
    string.chars.each_cons(n) {|element| numbers.push(element)}
  end
  result = numbers.select do |num_array|
    num_array.join.to_i.odd?
  end
  result.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28