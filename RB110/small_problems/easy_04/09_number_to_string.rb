=begin
In the previous two exercises, you developed methods 
that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.
=end

def integer_to_string(int)
  letter_table = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7=> "7", 8 => "8", 9 => "9" }
  string = ""
  loop do 
    digit = int % 10
    string.prepend(letter_table[digit])
    int = int/10
    break if int < 1
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

