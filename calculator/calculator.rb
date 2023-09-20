# ask the user for two numbers
# ask the user for an operation ot perform
# perform the operation on the twonumbers
# output the result
num1 = ''
num2 = ''

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to my calculator! Please enter your name:")
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  # get user input and check if valid
  loop do
    prompt("Please enter a number:")
    num1 = gets.chomp.to_i

    if valid_number?(num1)
      break
    else
      prompt("That does not look like a valid number....")
    end
  end

  loop do
    prompt("Please enter a second number:")
    num2 = gets.chomp.to_i

    if valid_number?(num2)
      break
    else
      prompt("That does not look like a valid number....")
    end
  end
  operator_prompt = <<-MSG
  Please enter a operation to perform:
  1 to add
  2 to subtract
  3 to multiply
  4 to divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # perform selected operation on numbers
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

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation (y to continue)?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using my calculator!")
