=begin
Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, 
  nor should you worry about invalid characters; 
  assume all characters will be numeric.

You may not use any of the standard conversion 
methods available in Ruby to convert a string to a number, 
such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and calculate 
the result by analyzing the characters in the string.

A: 
- iterate over each character of string

=end

def string_to_integer(string)
  digit_table = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}
  number = 0
  current_digit = 0
  size = string.length
  string.each_char do |char|
    current_digit = digit_table[char]
    number += current_digit * (10 ** (size - 1))
    size -= 1
  end
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570