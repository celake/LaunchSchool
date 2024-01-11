=begin
Write a method that takes two sorted Arrays as arguments, and returns a new Array 
that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You 
must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.

PROBLEM:
input: two arrays
output: one array
- elements of the output array must be sorted in order least to greatest
- arrays always integers?
- cannot sort final array
- will input arrays be sorted?

EXAMPLES:
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

DATA STRUCTURES:
input: arrays
output: different array

[1, 5, 9], [2, 6, 8]
compare 1,2, compare 5, 2, compare 5, 6 compare 9, 6 compare 8 9
1 2 5 6 8
ALGORITHM:
- create array `sorted`
- create `index_1` = 0
- create `index_2` = 0
- loop (array1 length + array2 length) times
  - check if which value at current index_1 and index_2 is greater
    - add lower value to `sorted` 
    - increment index value of array which contained lower value element
return `sorted`
=end

def merge(array1, array2)
  sorted = []
  n = 0
  size = (array1.length + array2.length) 
  index_1 = 0
  index_2 = 0
  loop do 
    if index_1 == array1.length
      sorted << array2[index_2]
      index_2 += 1
    elsif index_2 == array2.length
      sorted << array1[index_1]
      index_1 += 1
    elsif array1[index_1] < array2[index_2]
      sorted << array1[index_1]
      index_1 += 1
    else 
      sorted << array2[index_2]
      index_2 += 1
    end
    n += 1
    break if n == size
  end
  sorted
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]