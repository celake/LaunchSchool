=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:


NOTE: All numbers will be whole numbers greater than 0.

PROBLEM:
input integer
output: string
- string is number in tens plus remainder

EXAMPLES:
expanded_form(12); # Should return '10 + 2'
10 + 2
expanded_form(42); # Should return '40 + 2'
40 + remainder
expanded_form(70304); # Should return '70000 + 300 + 4'
10000  = 7 304  70000
304  / 100 = 3 4 300

DATA STRUCTURES
input: integer
output: string


ALOGRITHM:
- create `result` empty string

-loop
  - get number of digits variable `digits`
  - div mod `number` by 1 +  number of digits - 1  (frist time through `number` is argued integer)
    - add to resuts (first number + number of digits - 1) and ' + '
  - check if remainder < 10
    if yes add to  `results` and break 
    otherwise reassign number to remainder
 - return results   

=end

def expanded_form(number)
  results = ''
  digits = 0
  loop do 
    digits = number.to_s.length - 1
    divisor = ('1' + "0"*digits).to_i
    first, rem = number.divmod(divisor)
    results << (first.to_s + "0"*digits + ' + ')
    if rem > 9
      number = rem
    else
      results << rem.to_s
      break
    end
  end
  results
end


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
