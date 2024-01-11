=begin
Given a List [] of n integers , find minimum number to be inserted in a list, so that sum of all elements of list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make the sum of the List equal the closest prime number (7) .

PROBLEM:
input: array of integers
output: integer
- output is integer needed to sum with all array elements and equal next prime number
- input will have at least two elements
- all input elements are positive

DATA STRUCTURES:
input: array

output: string

ALGORITHM:
- prime_number? (current_number)
  - iteate from 2 to current_number - 1 |n|
    return false if current_number % n == 0
  - return true
  


- create `sum` sum of the array elements
- counter = 0
- loop from sum to ?? 
  - increment counter += 1
  - check if current number + counter is a prime number
    - no incremnt counter 
    - next
    - otherwise return counter
=end
def prime_number?(num)
  2.upto(num - 1) do |n|
    if num % n == 0
      return false
    end
  end
  true
end

def minimum_number(array)
  sum = array.sum
  counter = 0
  loop do
    num = sum + counter
    if prime_number?(num)
      return counter
    end
    counter += 1
  end
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2