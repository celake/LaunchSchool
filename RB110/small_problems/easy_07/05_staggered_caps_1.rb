=begin
Write a method that takes a String as an argument, 
and returns a new String that contains the original 
value using a staggered capitalization scheme in 
which every other character is capitalized, and 
the remaining characters are lowercase. Characters 
that are not letters should not be changed, but 
count as characters when switching between upper 
and lowercase.

PROBLEM:
input: string
output: new string
- every other letter in new string is capitalized
- non-letter characters count as characters for the switch count, but do not change themselves

EXAMPLES:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

DATA STRUCTURES:
input: string
output: new string

ALGORITHM:
- create new string `swapped`
- iterate through each character of argued string
  - if index odd
     - convert letter to uppercase
     - add to swapped
  - if index even
    - convert character to lowercase
    - add to `swapped`

return swapped
=end

def staggered_case(string)
  swapped = ""
  string.each_char.with_index do |char, index|
    if index.even?
      swapped << char.upcase
    else
      swapped << char.downcase
    end
  end
  swapped
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'