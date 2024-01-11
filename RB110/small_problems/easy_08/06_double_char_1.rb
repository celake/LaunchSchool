=begin
Write a method that takes a string, and returns a new 
string in which every character is doubled.

PROBLEM:
input: string
output: string
- double every character in the input string
- spaces are doubled
- empty string returns an empty string

EXAMPLES:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

DATA STRUCTURES:
input: string
output: string

ALGORITHM
- create empty string `doubled`
- iterate over argued string 
  -add current character to `doubled` twice
-return doubled

=end

def repeater(string)
  doubled = ''
  string.each_char {|char| doubled << char * 2}
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''