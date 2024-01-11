=begin
Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

PROBLEM:
input: two equal lenght arrays of integers
output: int of float
-differnece of number at the same index
- square the abs of the difference
- take the average of all the squares
- retun int if not a decimal 
otheriws return float

DATA STRUCTURES:
input: two arrays of equal lengths
int: array of pairs  
output: number either of int or a float

ALGORITHM:
- create `pairs` array of subarrays with pairs at same index (zip)
- create `squares` = []
-interate over pairs
  - subtract pairs and take abs value
  - square this value and push it to squares

- `result`  = sum of squars / squares length as a float
- if `result` after . are all 00 then truncate and return 
  - otherwise return `result`


=end
def solution(arr1, arr2)
  pairs = arr1.zip(arr2)
  squares = pairs.map do |pair|
    n = pair.reduce(:-).abs
    n * n
  end
  result = squares.sum / squares.length.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1

