=begin 
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one represents the number of characters that are uppercase letters, and one represents the number of characters that are neither.

PROBLEM:
input: string
output: hash
- hash values are lowercase, upercase and neither
- hash values are number of times this case appears
- spaces and digits are counted as neither



EXAMPLES:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

DATA STRUCTURES:
input: string
output: hash

ALGORITHM
- `results` empty hash
- call count method 3 times 
  - add count to hash with key lowercase, uppercase  or neither
-return hash
=end

def letter_case_count(string)
  results = {}
  results[:lowercase] = string.count('a-z')
  results[:uppercase] = string.count('A-Z')
  results[:neither] = string.count('^a-zA-Z')
  results
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }