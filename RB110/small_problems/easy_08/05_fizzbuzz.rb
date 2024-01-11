=begin
Write a method that takes two arguments: the first 
is the starting number, and the second is the ending 
number. Print out all numbers from the starting 
number to the ending number, except if a number is 
divisible by 3, print "Fizz", if a number is divisible 
by 5, print "Buzz", and finally if a number is 
divisible by 3 and 5, print "FizzBuzz".

PROBLEM:
input: two integers
output: integer or string printed 
- first argument is starting number
- second argument is ending number
- sequence of number between start and end numbers, print number unless
  - number is divisible by 3 then print `fizz`
  - number is divisible by 5 print 'buzz'
  - number is divisible by both 3 and 5 print `fizzbuzz`

Examples: 
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

DATA STRUCTURES:
input: two numbers (integers)
output: strings and numbers printed, no return value (nil)

ALGORITHM:
- iterate over range between first argued integer and second argued integer
  - if number is divisable by 3 and 15 print `fizzbuzz`
  - if number divisible by 3 print `fizz`
  - if number divisable by 5 print `buzz`
  - otherwise print number
=end
def fizzbuzz(first, last)
  result = []
  (first..last).each do |num|
    case 
    when num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    when num % 3 == 0 
        result << "Fizz"
    when num % 5 == 0
        result << "Buzz"
    else 
        result << num
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz