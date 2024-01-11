=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

PROBLEM:
input: string
output: string
-each `#` character removes one previous character
- return string is remaining characters

Examples
"abc#d##c"      ==>  "abc#d##c" 0 1 2 3
"abc##d######"  ==>  "" ####
"#######"       ==>  ""
""              ==>  ""

DATA STRUCTURES:
input: string
output: string

ALGORITHM:
index = 0
- loop until .. `hash count` = 0 || string 
  - find # index  remove it and index before it
  
return remaining characters
=end

def clean_string(string)
  return "" if string.length == 0 || string.count("#") == string.length
  string = string.dup
  loop do 
    current_index = string.index("#")
    string.sub!(string[current_index], '')
    string.sub!(string[current_index - 1], '') if string[current_index - 1]
    break if string.count("#") == 0
  end
  string
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
