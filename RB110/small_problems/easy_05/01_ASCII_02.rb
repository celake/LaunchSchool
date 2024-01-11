=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

PROBLEM:
input: string
output: integer
- output is sum of ASCII values of characters in string

EXAMPLES:
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

DATA STRUCTURES:
input string
intermediate: array? 
output: integer

ALGORITHM:
- convert input string to array of characters `chars`
- iterate over each character
  - convert character to ASCII value
  - put value in array
- sum array of ASCII values

=end

def ascii_value(string)
  string.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0