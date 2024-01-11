=begin
Write a method that takes two Array arguments 
in which each Array contains a list of numbers, 
and returns a new Array that contains the 
product of each pair of numbers from the 
arguments that have the same index. 
You may assume that the arguments contain 
the same number of elements.

PROBLEM:
Input: two arrays
Output: new array
- elements of new array are elements of argued array at same index multiplied
- the arrays will always have the same length

EXAMPLES:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

DATA STRUCTURES:
input: array
output: array
no assistant or intermediate DS needed

ALGORITHM:
-create new array `products`
- interate over first argued array 
  -multiply first element of first argued array with first element of second argued array
  - add result to products
return products
=end

# initial solution

def multiply_list(arr1, arr2)
  products = []
  arr1.length.times do |n|
    products << arr1[n] * arr2[n]
  end
  products
end

# further exploration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|a, b| a * b}
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]