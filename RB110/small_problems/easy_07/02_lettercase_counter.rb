=begin
Write a method that takes a string, and then 
returns a hash that contains 3 entries: one 
represents the number of characters in the 
string that are lowercase letters, one represents 
the number of characters that are uppercase 
letters, and one represents the number of 
characters that are neither.

PROBLEM:
input: string
output: hash
- hash has three keys representing characters that are uppercase, lowercase and neither
- spaces are counted as neither
- empty string returns has with all key values = 0
- hash keys are symbols

EXAMPLES:
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

DATA STRUCTURES:
input: string
output: hash
assistant: array with lowercase letters and one with uppercase letters?

ALGORITHM:
- create variable `upper` initialized to array of uppercase letters
- create variable `lower` initialized to array of lowercase letters
- create variable `result` iitialized to hash with keys set to `lowercase`` , `uppercase` and `neither` 
and all values set to 0
- iterate over argued string
  - if character is in `lower`
    - update result hash key `lowercase` value += 1
  - if character is in `upper`
    - update result hash key `uppercase` value += 1
  -otherwise
    - update result hash key `neither` value += 1
return `result`
=end

def letter_case_count(string)
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  result = {lowercase: 0, uppercase: 0, neither: 0} 
  string.each_char do |char|
    if lower.include?(char)
      result[:lowercase] += 1 
    elsif upper.include?(char)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }