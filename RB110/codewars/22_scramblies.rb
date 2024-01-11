=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.


PROBLEM:
input: two strings
output: boolean
- true if some of the characters in string one can rearranged to form str2
- only lowercase letters are in input strings
- performance cosidered
- strings null terminated
- if there are multiple duplicate characters in string 2 but only one instring one

EXAMPLES:

p scramble('rkqodlw', 'world') == true    
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

DATA STRUCTURES:
input: two strings
int: array of characters 
output: boolean

ALGORITHM:
- create `chars` is array of characters in string one
- iterate over `chars`
- (create variable is_true = true)
  - check if chars is in string 1  (all?)  
    - if yes remove it from string 1
    otherwise return false

=end

def scramble(str1, str2)
  chars = str2.chars
  chars.all? do |char|
    if str1.include?(char)
      str1.sub(char, "")
    end
  end
end

p scramble('rkqodlw', 'world') == true    
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true