=begin
Bubble Sort is one of the simplest sorting algorithms available. 
It isn't an efficient algorithm, but it's a great exercise for 
student developers. In this exercise, you will write a method that 
does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through 
the Array. On each pass, each pair of consecutive elements is compared. 
If the first of the two elements is greater than the second, then the 
two elements are swapped. This process is repeated until a complete 
pass is made without performing any swaps; at that point, the Array is 
completely sorted.

PROBLEM:
input: array of numbers or strings
output: array sorted numerically or alphabetically
- must use the bubble sort method
  - make multiple passes, comparing current and next element and switching order
- output array is the same array as input

EXAMPLES:

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

DATA STRUCTURES:
input: array
output: array (same array)

ALGORITHM:
loop - each outer loop is one pass over argued array
  -switch = 0
  -iterate over array elements
    check if current element is greater than next element
      switch places if they are
      increment switch by 1
  -break if switch equals 0
=end

def bubble_sort!(array)
  loop do 
    switch = 0
    counter = 0
    while counter < array.length - 1
      if array[counter] > array[counter + 1]
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
        switch += 1
      end
      counter += 1
    end
    break if switch == 0
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)