=begin
# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".


PROBLEM:
input: string
output: single character
- character output has lowest number of occurances in the argued string
- case insesetive
- if two characters have the same number of occurances then return the one that occures first in the string.  
- a space is a character - not just alphabetic

EXAMPLES:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

DATA STRUCTURES:
input: string
output: single character
hash? 

ALGORITHM:
-ceate `counts` empty hash
-iterate over charaters
  - add key and increase count by one
-find first mimimum value and return the key
  
=end

def least_common_char(string)
  string.downcase!
  counts = Hash.new(0)
  string.each_char {|char| counts[char] += 1}
  pair = counts.min_by {|key, value| value }
  pair[0]
end


p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
