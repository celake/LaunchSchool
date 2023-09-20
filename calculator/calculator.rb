# ask the user for two numbers
# ask the user for an operation ot perform
# perform the operation onthe twonumbers
# output the result

puts "Welcome to my calculator!"
puts "Please enter a number:"
num1 = gets.chomp.to_i
puts "Please enter a second number:"
num2 = gets.chomp.to_i
puts "Please enter a operation to perform: 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

case operator
  when '1'
    result = num1 + num2
  when '2'
    result = num1 - num2
  when '3'
    result = num1 * num2
  when '4'
    result = num1.to_f / num2
end

puts "The result is #{result}"