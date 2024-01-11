=begin
Write a method that takes a first name, 
a space, and a last name passed as a 
single String argument, and returns a 
string that contains the last name, a 
comma, a space, and the first name.

PROBLEM:
input: string
output: string
- reverse first word and second word
- separate by comma

EXAMPLES:
swap_name('Joe Roberts') == 'Roberts, Joe'

DATA STRUCTURES:
input: string
intermediate: array
output: string

ALGORITHM:
- convert argued string into array `name`
- switch first and second 
- convert `name` to string separate elements by comma and space

=end

def swap_name(string)
  name = string.split
  name[0], name[1] = name[1], name[0]
  name.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
