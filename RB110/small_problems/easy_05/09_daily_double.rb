=begin
  Write a method that takes a string argument and 
  returns a new string that contains the value of 
  the original string with all consecutive duplicate 
  characters collapsed into a single character. 

  You may not use String#squeeze or String#squeeze!.

PROBLEM: 
Input: string
Output: new string
 -remove all consecutive duplicate letters
 - can't use squeeze :(

EXAMPLES:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

DATA STRUCTURES:
Input: string of characters with some consecutive characters repeated

Output: a new string with repeated characters removed

ALGORITHM:
-create `new_string` variable initialized to empty string
- iterate over argued string
  - if character and next character are not ==
    - add to `new string`
- return `new_string`
=end

def crunch(string)
  new_string = ''
  string.each_char.with_index do |char, index|
    new_string << char if char != string[index + 1]
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''