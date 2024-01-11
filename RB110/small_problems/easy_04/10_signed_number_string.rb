=begin
## my solution:

def integer_to_string(int)
  letter_table = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7=> "7", 8 => "8", 9 => "9" }
  string = ""
  int *= -1 if int < 0
  loop do 
    digit = int % 10
    string.prepend(letter_table[digit])
    int = int/10
    break if int < 1
  end
  string
end

def signed_integer_to_string(num)
  if num < 0
    sign = '-'
  elsif num > 0 
    sign = '+'
  else
    sign = ''
  end
  integer_to_string(num).prepend(sign)
end

=end
# refactored launchschool solution: 

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'