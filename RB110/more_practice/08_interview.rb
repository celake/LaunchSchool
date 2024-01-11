=begin
  For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python)
an array [t, k] (in Ruby and JavaScript)
in C, return k and write to the string t passed in parameter


PROBLEM:
input: string
output: array with two elements
- find a substring that can be repeated 'n' times to equal argued string
- first element of output arr is string
- second element of output arr is number of times repeated
- input string is alwasy lowercase letters

DATA STRUCTURES:
input: string
int: array of substrings ( subtring length < = half the string length )
output: array


ALGORITHM:
- create `substrings` array as empty array
- iterate over first half of string  |end_index|
    - push each string slice 0 to end_index

-iterate over `substrings`
  - if substing * ((lenth of string) / length of substring) = string return that

=end

def f(string)
  substrings = []
  0.upto(string.length- 1) do |end_index|
    substrings << string[0..end_index]
  end
  substrings.each_with_object([]) do |substr, arr|
    if substr * (string.length / substr.length) == string
      arr << substr
      arr << (string.length / substr.length)
      return arr 
    end
  end
end


p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
p f("aaa") == ['a', 3]