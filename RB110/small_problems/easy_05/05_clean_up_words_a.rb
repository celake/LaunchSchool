=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

PROBLEM:
input: strng
output: string
- remove all non-alphabetic characters and replace with space
- output string should not have more than one space in a row

EXAMPLES:
cleanup("---what's my +*& line?") == ' what s my line '

DATA STRUCTURES:
-input: string
-output: string

ALGORITHM:
- iterate over each character
  - replace all non- alphabetic characters with spaces
- remove extra spaces

=end
def cleanup(string)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  new_string = ''
  string.each_char do |char|
    if alpha.include?(char)
      new_string << char
    else 
      new_string << ' '
    end
  end
  new_string.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '