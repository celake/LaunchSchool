=begin

Write a method that takes a string as an argument and 
returns a new string in which every uppercase letter is 
replaced by its lowercase version, and every lowercase letter 
by its uppercase version. All other characters should be unchanged.

You may not use String#p swapcase; write your own version of this method.

PROBLEM:
-input: string
-output: new string
- uppercase characters in argued string are changed to lowercase
- lowercase characters in argued string are changed to uppercase
- all other characters remain unchanged
- no use of String#p swapcase
- empty strings?

EXALPLES:

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

DATA STRUCTURES:
input: string
Output: new string
assistant:array of uppercase letters, array of lowercase letters

ALGORITHM: 
- create array `uppercase` of uppercase characters
- create array 'lowercase' of lowercase characters
- create new string `swapped`
- interate over each character of string with index
  - if character is in uppercase array
    add element at the  same index in lowercase array to `swapped`
  - if character is in lowercase array
    add element at the same index in uppercase arra to `swapped`
  - if not in either array add charachter to `swapped`
-return `swapped`
=end

def swapcase(string)
  upper = ('A'..'Z').to_a
  lower = ('a'..'z').to_a
  swapped = ""
  string.each_char do |char|
    if lower.include?(char)
      index = lower.index(char)
      swapped << upper[index]
    elsif upper.include?(char)
      index = upper.index(char)
      swapped << lower[index]
    else
      swapped << char
    end
  end
  swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'