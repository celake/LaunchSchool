=begin
Write a program that will take a string of digits and return all the possible consecutive number series of a specified length in that string.

For example, the string "01234" has the following 3-digit series:

012
123
234
Likewise, here are the 4-digit series:

0123
1234
Finally, if you ask for a 6-digit series from a 5-digit string, you should throw an error.

PROBLEM:
input string and integer
output array of subarrays of argued integer length

ALGORITHM:
- create gaurde clause throws error if argued int is more than string length
- create `results` equal to empty array
- iterate over array from 0 to (length - arguded integer)
  - create sub array length of argued integer
  - check if sorted subarray == sub array
  if yes add to `results`
-return results

=end

class Series
  def initialize(number)
    @digits = number.chars.map(&:to_i)
   end

  def slices(num)
    raise ArgumentError if num > @digits.length
    results = []
    0.upto(@digits.length - num ) do |start_index|
     @digits[start_index, num]
      results << @digits[start_index, num]
    end
    results
  end

end