=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

 PROBLEM:
input: integer
output: integer
-multiply each digit and multiply each digit of the results unitl the number is on digit
- negative numbers? 

EXAMPLES:

persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                # and 4 has only one digit

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                # 1*2*6=12, and finally 1*2=2

persistence(4) # returns 0, because 4 is already a one-digit number

DATA STRUCUTRES:
input: integer
output:integer

ALGORITHM:
- if number is one digit return 0
  (converto to string call length method)
- inialize variable `counter` ot 0
- loop
  - split `number` into digits
  - number = digits multplied
  - find digits for number(converto to string call length method)
  - if number has more than one digit
    - break
  - otherise 
    - increment counter by one
return counter
=end

def persistence(number)
  return 0 if number.to_s.length == 1
  counter = 1
  loop do
    digits = number.to_s.chars.map {|char| char.to_i}
    number = digits.reduce(:*)
    if number.to_s.length == 1
      break
    else
      counter += 1
    end
  end
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4

