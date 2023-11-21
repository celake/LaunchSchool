=begin
input: integers (2)
output: integers (6)
Rules:
 - user input is integer
 - perform operations on integers and print to screen
 - include calculation in print out

 capture user input in two variables
 use puts to output the operations using string interpolation
=end

def prompt(message)
  puts "=> #{message}"
end

def operation_output(num1, num2)
  prompt("#{num1} + #{num2} = #{num1 + num2}")
  prompt("#{num1} - #{num2} = #{num1 - num2}")
  prompt("#{num1} * #{num2} = #{num1 * num2}")
  prompt("#{num1} / #{num2} = #{num1 / num2}")
  prompt("#{num1} % #{num2} = #{num1 % num2}")
  prompt("#{num1} ** #{num2} = #{num1 ** num2}")
end

prompt("Enter the first integer:")
first_num = gets.chomp.to_i
prompt("Enter the second integer")
second_num = gets.chomp.to_i

operation_output(first_num, second_num)