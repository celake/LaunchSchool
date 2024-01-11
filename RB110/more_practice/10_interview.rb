=begin
  Complete the function p scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.

p scramble('rkqodlw', 'world') ==> True

p scramble('cedewaraaossoqqyt', 'codewars') ==> True
p scramble('katas', 'steak') ==> False

PROBLEM:
input: two strings
output: boolean
- if portion of characters in str1 can form string 2 return true
- only lowercase characters in string
- only alphabetic characters will be given

DATA STRUCTURES:
input: two strings
ouptput: boolean

ALGORITHM:
-create `str1_chars` characters array from str1
-iterate over `str1_chars` 
  - if current char is in str2
    - remove the character (distructively)
- lenght str2 == 0 return true 
- otherwise return false

=end

def scramble(str1, str2)
  str2.delete!(str1)
  str2.length == 0 ? true : false
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false