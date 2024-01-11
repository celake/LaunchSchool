=begin
write a method that transposes a matrix of any size.

PROBLEM:


EXAMPLES:

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]
=end

def transpose(orig_array)
  num_rows = orig_array.length - 1
  num_columms = orig_array[0].length - 1

  transposed = []
  (0..num_columms).each do |column_index|
    sub_array = (0..num_rows).map do |row_index|
      orig_array[row_index][column_index]
    end
    transposed << sub_array
  end
  transposed
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
#p transpose([[1, 5, 7], [8, 2, 4]])
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]