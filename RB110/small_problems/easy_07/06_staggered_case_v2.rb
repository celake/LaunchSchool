=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. 

It should ignore non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

PROBLEM:
Input: string
output: new string
- every other character is uppercase (start with first character)
- non-alpha characters are not counted as a character but should be in return string (include numbers)
- spaces do not count as characters

EXAMPLES:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

DATA STRUCTURES:
input: string
output: new string
ass: array of characters


ALGORITHM:
- create `results` = empty string
- create counter = 1
- array of `alphabetic` characters
- string = string lowercase 
- iterate over each character in argued string
  - if counter is odd and character is in `alphabetic ``
    -push char to `results`
    -increment counter
 results 

=end

def staggered_case(string)
  results = ""
  counter = 1
  alpha = ("a"..'z').to_a + ("A".."Z").to_a
  string.each_char do |char|
    if alpha.include?(char)
      if counter % 2 == 1
        results << char.downcase.upcase
      else 
        results << char.downcase
      end
      counter += 1
    else
      results << char
    end
  end
  results
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'