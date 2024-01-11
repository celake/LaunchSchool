=begin
Write a method that takes an Array of numbers, and returns an Array 
with the same number of elements, and each element has the running 
total from the original Array.


P: 
input: array of integers
output: array of integers

rules: empty array returns an empty array
output array elements are sum of input array elements up to current index.

E:

D:
array,  integer, array

A: 
- compare input array to empty array
  - if equal return empty array
- initialize variable `output` to empty array
- initialize variable `total` to 0
- iterate over input array
  - add current element to total
  - push total to `output`
return `output`

=end

def running_total(numbers)
  output = []
  if numbers.length == 0
    return output
  end
  total = 0
  numbers.each do |num|
    total += num
    output.push(total)
  end
  output
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []