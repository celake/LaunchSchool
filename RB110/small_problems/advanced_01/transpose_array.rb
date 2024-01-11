=begin

The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix.

Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
] 
==

1  4  3  0,1 = 1, 0  0, 2  2, 0
5  7  9   1, 0 = 0 , 1 / 1 , 1 = 1, 1 / 1, 3 = 3 , 1
8  2  6  2, 0 == 0, 2 /  


0,0 1,1,2,2 stay the same

PROBLEM:
input: array matrix
output: array matrix
- arrays can be of any size

switch indexes

DATA STRUCTURES:
input: array matrix
output; array matrix

ALGORITHM
- create `new_matrix` equal to empty array
- create each new row using first index of original array matrices  - 
iterate sub array length (5)
    iterate no of sub arrays (3)
        [0, 0] [1, 0] [2, 0] [num_sub_arrys, sub_length ]

        [1, 2, 3, 4, 5]  
        [4, 3, 2, 1, 0]
        [3, 7, 8, 6, 2]

=end


transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]