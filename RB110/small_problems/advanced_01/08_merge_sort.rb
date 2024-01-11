=begin
Sort an array of passed in values using merge sort. 
You can assume that this array may contain only one 
type of data. And that data may be either all numbers 
or all strings.

Merge sort is a recursive sorting algorithm that works 
by breaking down the array elements into nested sub-arrays, 
then recombining those nested sub-arrays in sorted order. It is best shown by 
example. For instance, let's merge sort the array [9,5,7,1]. Breaking this 
down into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

PROBLEM:
input: array of numbers or strings
output:  array of numbers or strings sorted numerically or alphabetically
- array will contain only one type of data
- new array output

[5, 7, 8, 3, 5, 1, 4]
[[5, 7, 8], [3, 5, 1], [4]]
[[[5, 7] [8]], [[3, 5], [1]], [4]]
[[[[5], [7]], [8]], [[[3], [5]] [1]], [4]]
EXAMPLES:

merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

DATA STRUCTURES:
input: array
output: array

ALGORITHM:
- set `reduce` to true
- if reduce = true 
  - split array into two array of array (partition?) 
  - if all arrays = 1
    -`reduce` = false
-otherwise: 
  - sort values of two arrays into one array use `merge`

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

def merge_sort(array)
  return array if array.size = 1
  sub_array_1, sub_array_2 = array.partition.with_index { |arr, index| index <= index/2}

  
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]