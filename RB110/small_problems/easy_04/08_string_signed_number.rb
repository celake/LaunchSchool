=begin
Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, 
your method should return a positive number; if it is a -, your 
method should return a negative number. If no sign is given, you 
should return a positive number.

You may assume the string will always contain a valid number.
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


def string_to_signed_integer(signed)
  first_char = signed.chars.first

  number = string_to_integer(signed.delete('-+'))
  first_char == '-' ? -number : number
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100