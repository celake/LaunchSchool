=begin
Write a method that takes a string as an argument, and returns true
if all parentheses in the string are properly p balanced, false otherwise. 
To be properly p balanced, parentheses must occur in matching '(' and ')' pairs.
Square brackets and curly brackets normally come in pairs. Quotation marks
(single and double) also typically come in pairs and should be balanced.
Can you expand this method to take into account those characters? return false if anything 
is not balanced

PROBLEM:
input string
output: boolean
- return true if all parentheses are matching pairs
- return true if no parens
- return false if parenthesis are not in order `(..)` but not `)..(`
EXAMPLES:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

DATA STRUCTURES:
input: string
intermediate: array from argued string
              array open closed  parens
output: boolean

ALGORITHM:
- create array of characters in argues string `chars`
- create empty array `parentheses` 
- intialize variable `index` = 1
- interate over `chars`
  - if current char is a paren
    add to `parenthese`
-loop over parentheses
  - if current index is closed and previous is open
    - remove both 
  - end if current index = current length - 1
- if parentheses is empty return true
- otherwise return false

=end

def balanced?(string)
  balanced = {"parens" => 0, "square" => 0, 'curly' => 0, "single" => 0, "double" => 0}
  string.each_char do |char|
   case char
   when "(" then balanced["parens"] += 1
   when ")" then balanced["parens"] -= 1
   when "[" then balanced["square"] += 1
   when "]" then balanced["square"] -= 1
   when "{" then balanced["curly"] += 1
   when "}" then balanced["curly"] -= 1
   when "'" then balanced['single'] += 1
   when '"' then balanced['double'] += 1
   end
   if balanced['parens'] < 0 || balanced['square'] < 0 || balanced['curly'] < 0
    return false
   end
  end
  balanced['single'] = balanced['single'] % 2
  balanced['double'] = balanced['double'] % 2
  balanced.values.sum.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((W"hat) (is th"is))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('{H{ey!}}') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What[ is() ]up [') == false