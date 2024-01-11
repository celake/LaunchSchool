=begin
For a given nonempty string s find a minimum substring t and the maximum number k, 
such that the entire string s is equal to t repeated k times. The input string 
consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) 
or an array (in Ruby and JavaScript) [t, k]

Example #1:
s = "ababab" =["ab", 3]

Example #2:
s = "abcde" == ['abcde', 1]


PROBLEM:
input: string
output: array with substring and integer as elements
- find substring for which the string is made up of `n` times
- output array elements are the substring and the number of times to multiply it to get original string
- empty strings?
- single letter string  "bbb" is this ['b', 3] or ['bbb', 1]

EXAMPLES:


DATA STRUCTURES:
input: string
intermediate: array of all sub arrays.  
output: array

ALGORITHM:
- variable `substrings` is array of all substrings of argued string
- variable `result` equal to []
- iterate through substrings starting with smallest
  - multiply substring by string/substring length
  - if this is equal to original string
    - add substring and multiple to `result`
    - return result
=end


def f(string)
  substrings = []
  result = []
  0.upto(string.length - 1) do |start_index|
    start_index.upto(string.length - 1) do |last_index|
        substrings << string[start_index..last_index]
   end
  end
  substrings.sort_by {|item| item.length}
  substrings.each do |element|
    if string == element*(string.length/element.length)
      result << element << (string.length/element.length)
      return result
    end
  end

end

p f("ababab") == ["ab", 3]
p f("abcde") == ['abcde', 1]