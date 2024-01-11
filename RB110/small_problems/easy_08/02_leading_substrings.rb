=begin
Write a method that returns a list of all substrings 
of a string that start at the beginning of the 
original string. The return value should be arranged 
in order from shortest to longest substring.

PROBLEM:
Input: string of characters
Output: array of substrings
-only characters, no spaces
-string should be shortest to longest
- strings alwasy start with first character in argued string

EXAMPLES:
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

DATA STRUCTURES
Input: string
Output: array of strings

ALGORITHM:
-create empty array `sub_strings`
-create `counter` set to 1
-loop over string string length times
  - add slice of string from 0 to n to 'sub_strings'
  -increment counter
  -break when counter > length
-return `sub_strings`

=end
def leading_substrings(string)
  sub_strings = []
  counter = 0
  loop do 
    sub_strings << string[0..counter]
    counter += 1
    break if counter == string.length
  end
  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']