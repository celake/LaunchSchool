=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

PROBLEM:
input: string
output: string
- all double consecutive duplicate characters are collapsed into one

EXAMPLES:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

DATA STRUCTURES:
input: string
output: string

ALGORITHM:
-create `chars` array of argued string characters
- create `result` variable equal to empty string
- if argued string lenght less than 2
  - return argued string
- iterate over `chars`
  - if chars not = chars - 1
    - add char to `results`
return `results`
=end

def crunch(string)
  result = ''
  0.upto(string.length - 1) do |n|
    result << string[n] unless string[n] == string[n + 1]
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''