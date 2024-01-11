=begin
Write a method that rotates an array by moving the first 
element to the end of the array. The original array should 
not be modified.

Do not use the method Array#rotate or Array#rotate! 
for your implementation.

PROBLEM:
input: array
output: new array
- the output the array has the element at index 0 to the end of the array
- use of #rotate is not allowed

EXAMPLES:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

DATA STRUCTURES:
input: array
output: array

ALGORITHM:
- create duplicate of argued array
- remove last element in new array
- put removed element at begining of new array

=end
def rotate_array(array)
  results = array.dup
  results.push(results.shift)
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true