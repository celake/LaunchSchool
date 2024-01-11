=begin

Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

PROBLEM:
input: two integers
output: integer or nil
-raise first int to power of the second
- retrun nil if second is negative 
- cannot use the `**` operator

Examples:

p power(2, 3) == 8
p power(10, 0) == 1  if second number is 0 return the first
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil  => if second number is neg reutrn nil


2 times
  number *= input number
  

DATA STRUCTURES:
input: two integers
output: int or nil

ALGORITHM:
-set first number to var `number`
- `power` = second integer - 1
- interate `power` times
   number = number * input number
return number

=end
def power(base, power) 
  return nil if power < 0 
  return 1 if power == 0
  number = base
  iterations = power - 1
  iterations.times do |_|
    number *= base
  end
  number
end


p power(2, 3) == 8
p power(10, 0) == 1  
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil  