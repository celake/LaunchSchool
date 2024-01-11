=begin
  Write a method that counts the number 
  of occurrences of each element in a given array.

  PROBLEM:
  Input: array
  Output: printed string
  - the elements of the array are the keys in the output hash
  - the values are the number of times each element appears in the array
  - elements are case sensitive

  EXAMPLES:
  vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles) 
car => 4
truck => 3
SUV => 1
motorcycle => 2

DATA STRUCTURES:
Input: Array
Intermediate: Hash
Output: Printed string

ALGORITHM:
- create empty hash `count`
- iterate over argued array
  - check if element is key in hash
    - if not add element as key and value = 1
    - if it is increment value by one
print each key value pair separated by `=>`

=end
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new{0}
  array.each {|word| count[word] += 1}
  count.each {|k, v| puts "#{k} => #{v}"}
end

p count_occurrences(vehicles) 