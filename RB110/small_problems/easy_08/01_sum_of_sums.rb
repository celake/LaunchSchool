require 
=begin
Write a method that takes an Array of numbers and 
then returns the sum of the sums of each leading 
subsequence for that Array. You may assume that 
the Array always contains at least one number.

PROBLEM:
Input: array of integers
Ouput: interger
- sum of first element + sum of first two elements + sum of first three elements ... 
- input array always has at least one number
- Assuming only integers

EXAMPLES:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

DATA STRUCTURES:
Input: array
Output: integer

ALGORITHM:
-create variable `sum` initialized to 0
- create variable `counter` initialized to 0
-loop over argued array 
    - add each element at each index up to current counter value
    - increment counter
    - break if counter < array length
return sum

=end
def sum_of_sums(array)
  sum = 0
  counter = 1
  loop do 
    counter.times { |n|sum += array[n] }    
    counter += 1
    break if counter > array.length 
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35