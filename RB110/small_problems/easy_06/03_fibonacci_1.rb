=begin
Write a method that calculates and returns the index of the first Fibonacci number 
that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)

PROBLEM:
input: integer representing number of digits
output: integer representing index of Fibonacci number
- input will never be less than 2
- first index is counted as 1 not 0

EXAMPLES:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

DATA STRUCTURES:
Input: integer
Output: integer
assistant: array with sequence of numbers up to argued integer number of digits

ALGORITHM:
- generate array with fibonacci numbers up to number of digits given by argued integer.
  start with array [1, 1] 
  initialize variable `index` to 2
    -loop
      - create next element by adding previous two elements
        -add value at index -2 with value at index -1
      - if current element lenght == argued integer
        -break
- return array length

=end
def find_fibonacci_index_by_length(length)
  fibonacci_numbers = [1,1]
  index = 2
  loop do 
    fibonacci_numbers.push(fibonacci_numbers[index - 2] + fibonacci_numbers[index - 1])
    break if fibonacci_numbers[index].digits.length == length
    index += 1
  end
  index + 1
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847