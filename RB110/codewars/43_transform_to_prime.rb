=begin
  Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

PROBLEM:
input: array of integers
output: iteger 
- find and return smallest number so that the sum of the array elements is equal to the next smallest prime number
- list will always have at least two numbers

DATA STRUCTURES:
input: array
output: integer
helper method: check prime number

ALGORITHM:
-create helper function: 
  -`is_prime?`
    - iterate from 2 + total number - 1 |check_num|
        if total-number is divisable by check_num then return false
    

-create `subarray_sum` = sum of all elements of the subarray
- n = 0
- loop 
    check if `subarray_sum` + n is prime
      return n    
    increment n by 1
=end  
def is_prime?(number_to_check)
  (2..(number_to_check - 1)).all? do |num|
    number_to_check % num != 0
  end
end


def minimum_number(array)
  n = 0
  subarray_sum = array.sum
  loop do 
    return n if is_prime?(subarray_sum + n)
    n += 1
  end
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

