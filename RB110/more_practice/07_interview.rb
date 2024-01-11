=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

PROBLEM:
input:string
output: integer
- find all combiations of  the argued string that are odd numbers


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

DATA STRUCTURES:
input: string
int: array of substrings
output: integer
 
ALGORITHM:
- `substrings` equal empty array
- iterate from 1 to string length minus one |start_index|
  - iterate form start index to string legth - 1  |end_index|
    str = slice of the argued string from start-index to end_index
    push str to `substrings`

- interate and select all the elements that are odd
- call length on result of selection


=end

def solve(string)
  substrings = []
  size = string.length - 1
  0.upto(size) do |start_index|
    start_index.upto(size) do |end_index|
      substrings << string[start_index..end_index]
    end
  end
  substrings.select {|str| str.to_i.odd?}.length
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28