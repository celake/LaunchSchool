=begin

The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

PROBLEM:
input: string
output: string
-ignore case
-if character appears more than once it ")"
- if it appears more than once sub ")" for each occcurance
- if char appears only once it is "("

EXAMPLES

DATA STRUCTURES:
input: string
int
output: string

ALGORITHM:
- downcase input string
- create `results` = ""
- iterate over each char of the argued string
  - find count of current character
  - if count is greater than 1 
    push ")" to results
  - otherwise
    push "(" to results
return results
=end

def duplicate_encode(string)
  string = string.downcase
  results = ""
  string.each_char do |char|
    if string.count(char) > 1
      results << ")"
    else
      results << "("
    end
  end
  results
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

