=begin
A double number is a number with an even number 
of digits whose left-side digits are exactly the 
same as its right-side digits. For example, 44, 
3333, 103103, 7676 are all double numbers. 444, 
334433, and 107 are not.

Write a method that returns 2 times 
the number provided as an argument, 
unless the argument is a double number; 
double numbers should be returned as-is.

PROBLEM:
input: integer
output: integer
- output integer is 2 times input integer
- unless input integer is divisible by 2 and both halves of integer are equal


EXAMPLES:

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

DATA STRUCTURES:
- input: integer
- output: integer
assistant: string

ALGORITHM:
-if num % 3 == 0
  -return number * 2
- else 
  -convert number to string
  -split in to two strings in middle
  - compare strings 
    - if equal 
      - return number
    - else
      - return number * 2


=end
def twice(number)
  num_string = number.to_s.delete("_")
  half = num_string.length/2
  if num_string.length.odd? || num_string[0..(half - 1)] != num_string[half..-1]
    return number *2
  else
    return number
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) == 10