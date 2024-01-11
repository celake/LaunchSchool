=begin

Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".

Problem:
-input: string of alpha characters, no spaces
-output: string
-output string in alphabetical order with uppercase letters first
-empty string returns empty string
- always children with a parent

EXAMPLES:

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

DATA STRUCUTRES:
input: string
output: string


ALGORITHM:
- if stirng is empty return an empty string
- downcase argued stirng
-create `letters` array of characters from argued string
- sort `letters`
-iterate over each character
  -if the character is first of its kind  - is this character = next character but not == character before it
    -upcase
-convert letters to string and return it

=end

def find_children(string)
  return "" if string.length == 0
  string = string.downcase
  letters = string.chars.sort
  letters.each_with_index do |char, index|
    if letters[index - 1].downcase != char && letters[index + 1] == char
      letters[index] = char.upcase
    end
  end
  letters.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
