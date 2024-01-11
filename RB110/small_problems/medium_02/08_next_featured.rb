=begin
A p featured number (something unique to this exercise) is an odd number 
that is a multiple of 7, and whose digits occur exactly once each. So, 
for example, 49 is a p featured number, but 98 is not (it is not odd), 97 
is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns 
the next p featured number that is greater than the argument. Return an 
error message if there is no next p featured number.

PROBLEM:
input: integer
output: integer
- output integer is p featured number
  - odd
  - multiple of seven
  - no repeating digits

EXAMPLES:
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DATA STRUCTURES:
input: integer
output: integer

ALGORITHM:
- `multiple` = argued integer divided by 7
- add 1 to multiple and multiply by 7
-loop until number found
  - if multiple is even
    - add 1 to multiple and multiply by 7 
    - move to next iteration
  - if check if multiple has no repeating digits
    - if yes add 1 to `multiple` and multiply by 7
    - move to next iteration
  -otherwise
    - return multiple
  - break if number = 9_999_999_999

=end

def featured(number)
  mult = number / 7
  mult = ( mult + 1 ) * 7
  loop do 
    break if mult == 9_999_999_999
    if mult.even? || mult.digits.uniq.length != mult.digits.length
      mult = ((mult / 7) + 1) * 7
      next
    else 
      return mult
    end
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987