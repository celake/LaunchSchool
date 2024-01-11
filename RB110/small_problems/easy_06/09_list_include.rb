=begin
  Write a method named p include? 
  that takes an Array and a search value as arguments. 
  This method should return true if the search value is 
  in the array, false if it is not. You may not use the 
  Array#p include? method in your solution.

  PROBLEM:
  -input: array and object (integer, nil)
  -output: boolean
  -rules: return true if array contains object and false if not
          first argument can be an empty array
          empty array is not equal to nil

EXAMPLES:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

DATA STRUCTURES:
  input: array and some value
  output: boolean

ALGORITHM:
- iterate over argued array
    - check each element against argued value
    - return true if value is equal to element
-return false if true is not returned in array
=end

def include?(array, value)
  values_in_array = array.select {|element| element == value}
  values_in_array == [] ? false : true
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false