=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

PROBLEM:
input: integer
output: integer
- output is sum of all multiples of 5 or 3 below the input integer
- if number is mulitple of both only count it once


DATA STRUTURES:
input: intteger
int: array to hold muliples
output: integer

ALGORITHM:
- create `results` which is an empty array
- iterate from 1 to 1 less than input integer
  - check if 3 or 5 divides into input integer
    - add to results
sum the results


=end
def solution(number)
  results = []
  1.upto(number - 1) do |n|
    if n % 3 == 0 || n % 5 == 0
      results << n  
    end
  end
  results.sum
end

p solution(10) == 23
p solution(20) == 78 
p solution(200) == 9168
