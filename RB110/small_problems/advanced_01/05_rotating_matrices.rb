=begin
A 90-degree rotation of a matrix produces a new matrix in 
which each side of the matrix is rotated clockwise by 90 
degrees. For example, the 90-degree rotation of the matrix 
shown above is:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

3  4  1
9  7  5
6  2  8


=end

def rotate90(orig_array, n)
  if n > 0
    orig_array = rotate90(orig_array, n-1)
  end
  num_rows = orig_array.length - 1
  num_columms = orig_array[0].length - 1

  transposed = []
  (0..num_columms).each do |column_index|
    sub_array = (0..num_rows).map do |row_index|
      orig_array[row_index][column_index]
    end
    transposed << sub_array.reverse
  end
  transposed
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

#new_matrix1 = rotate90(matrix1)
#new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(matrix2, 3)

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
