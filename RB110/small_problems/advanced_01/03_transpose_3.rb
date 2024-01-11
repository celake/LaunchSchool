=begin
A 3 x 3 matrix can be represented by an Array of Arrays 
in which the main Array and all of the sub-Arrays has 3 
elements. For example:

1  5  8
4  7  2
3  9  6

can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

The transpose of a 3 x 3 matrix is the matrix that results 
from exchanging the columns and rows of the original matrix. 
For example, the transposition of the array shown above is:

1  4  3
5  7  9
8  2  6

PROBLEM:
input: input array of three sub-arrays
output: diferent array of three sub-arrays
- new array has elements switched as follows 
[0][1] - [1][0] // [0][2] - [2][1] // [1][2] - [2][1] 
start n  n n-1    

EXAMPLES:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

DATA STRUCTURES:
array
array

ALGORITHM
[0][1] - [1][0] //  [0][2] - [2][1] // [1][2] - [2][1] //

 - index n  n n-1
 - create new array `transposed` is copy of argued array
 iterate over outer array
  -iterate over each sub array
    if current index == argued array current index and [index outer +1 ] [index inner -1] exists 
      and is the same as argued array
      - then  switch them
  return transposed

=end

def transpose(orig_array)
  transposed = []
  (0..2).each do |column_index|
    sub_array = (0..2).map do |row_index|
      orig_array[row_index][column_index]
    end
    transposed << sub_array
  end
  transposed
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]