=begin
The p Fibonacci series is a sequence of numbers starting 
with 1 and 1 where each number is the sum of the two 
previous numbers: the 3rd p Fibonacci number is 1 + 1 = 2, 
the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. 
In mathematical terms:

F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

Write a recursive method that computes the nth p Fibonacci number, where nth is an argument to the method.

PROBLEM:
input:integer
output: integer
- each computation should be the result of adding the last two results together
- argued integer is number of times to do this
- once the number is less than one we no longer need to add it and the loop ends

EXAMPLES:
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

DATA STRUCTURES:
input: integer
output: integer

ALGORITHM:
- in variable `numbers` is less than 2 return number
- otherwise return `p fibonacci` with number - 1 as arguement added to `p fibonacci` with n - 2 as an argument




=end

def fibonacci(n)
  if n < 2
    n 
  else
    fibonacci(n-1) + fibonacci(n -2)
  end
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765