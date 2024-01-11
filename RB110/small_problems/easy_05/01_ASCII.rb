=begin
  Write a method that determines and returns the ASCII string value of a string that is
   passed in as an argument. The ASCII string value is the sum
   of the ASCII values of every character in the string. 
   (You may use String#ord to determine the ASCII value of a character.)

P:
input: string
output:integer
  rules: sum the ascii value of each character of string
  can use #ord
  empty string = 0
E: 
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

D: 
input string
output: integer
array to hold ascii values

A:
- create variable `values` initialized to empty array
- convert string to array of characters
- iterate over array of characthers 
  - call #ord on each character
  - push return vale of #ord to `values`
- sum all elements of `values` array

=end
def ascii_value(string)
  values = []
  chars = string.chars  #skip this and use String#each_char to iterate
  chars.map do |element|
    values.push(element.ord)
  end
  values.sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0