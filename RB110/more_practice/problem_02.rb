# Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!
# The input is restricted to contain no numerals and only words containing the english alphabet letters.

=begin
PROBLEM:
input: string of characters
output: string
- alphabetic characters in alphabetic order
- no white space or special characters
- letters appear in the order that they appear in argued string

DATA STRUCTURES:
input: string
output: string

TheHolyBible


ALGORITHM:
-remove spaces and special characters from string
-create `lowercase` which is lowercase of argued string
- sort by the lowercase version
=end

def alphabetized(string)
  string = string.delete('^a-zA-Z')
  string.chars.sort_by {|elements| elements.downcase}.join
end

p alphabetized("The Holy Bible") #== "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"