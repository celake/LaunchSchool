# Get user input of integer greater than 0, validate
# create var num to store user input
# Get user input for addition or multiplication
# Set user input to variable
# loop through integers from 1 to number and perform operation
# output value
num = ''

def calculate_sum(num)
  (1..num).inject(:+)
end

def calculate_product(num)
  (1..num).inject(:*)
end

def num_valid?(num)
  num.to_i != 0
end

puts "Please enter an integer greater than 0:"
loop do
  num = gets.chomp
  if num_valid?(num)
    num = num.to_i
    break
  else
    puts "That is not a valid number, please enter an integer greater than 0"
  end
end

puts "Please enter 'S' for sum or 'P' for product"
operator = gets.chomp.downcase

if operator == 's'
  sum = calculate_sum(num)
  puts "The sum of the numbers 1 to #{num} is #{sum}"
elsif operator == 'p'
  product = calculate_product(num)
  puts "The product of the numbers 1 to #{num} is #{product}"
else
  puts "Looks like you did not input a valid operator!"
end
