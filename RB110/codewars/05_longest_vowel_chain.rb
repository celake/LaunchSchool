=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

PROBLEM:
input: string
output: integer
- integer is the longest vowel only substring in argued string
- no spaces or non-alpha characters


EXAMPLES:
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

DATA STRUCTURES:
input: string
output: integer
assistant: array of vowels

ALGORITHM:
- create `vowels` array with english vowels as elements
- highest = 0
  - count = 0
- iterate over argued string
  - if character = vowel
    - count += 1
  - otherwise
    if count is greater than hightest
      set highest to count
      set count to 0
- return hightest
=end

def solve(string)
  vowels = %w(a e i o u)
  highest = 0
  count = 0

  string.each_char do |char|
    if vowels.include?(char)
      count += 1
    else
      count = 0
    end
    if count > highest
      highest = count
    end
  end
  highest
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
