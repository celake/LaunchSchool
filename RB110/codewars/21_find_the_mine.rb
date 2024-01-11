=begin 

6 kyu
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

PROBLEM:
input: array matrix - can be any size but will be square
output: array with two integer elements
-output is location of integer 1 
- there will only be one integer 1 in the arrays
- the output array element are the row and column in that order

DATA STRUCTRUES:
- input: array matrix
output: array 

ALGORITHM:
- iterate over each array call the index `row`
  - iterate over each sub array call that index 'column'
    if current element is equal to one
      reutrn [row, column]
=end

def mineLocation(input_array)
  size = input_array.length - 1
  input_array.each_with_index do |sub, index|
    if sub.index(1)
      return [index, sub.index(1)]
    end
  end
  [0, 0]
end



p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

