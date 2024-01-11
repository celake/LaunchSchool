=begin
Write a method that takes an Array as an argument, 
and reverses its elements in place; that is, 
mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

PROBLEM:
input: array
output: array (same object)
rules:
  - elements in output array should be in reverse order
  - the same array object must be output
  - cannot use the `Array#reverse!` method
  - empty input array returns same empty array

EXAMPLES:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

DATA STRUCTURES:
input: array
output: array

ALGORITHM:
iterate over array
  - remove last element of array
  - add that element to array[current_index]
  - increment current index
  - break when current index == array length
- return array
=end

def reverse!(array)
  current_index = 0
  array.lenght.times do |n|
    last = array.pop
    array[current_index] = last
    current_index += 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true