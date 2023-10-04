require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# ask the user for two numbers
# ask the user for an operation ot perform
# perform the operation on the two numbers
# output the result

####
# BONUS
####

# Better Integer and Float Validation:
# given input from user
# validate it is an integer or float including 0
# all messages in a external file
# add a second language

num1 = ''
num2 = ''

LANGUAGES = ['en', 'ne']
def prompt(message)
  puts "=> #{message}"
end

def valid_name?(name)
  name.empty? ? false : true
end

# validate number and set to integer or float
def valid_number?(num)
  if /^-?\d+$/.match(num)
    num = num.to_i
  elsif /^-?\d*\.?\d+$/.match(num)
    num = num.to_f
  else
    return false
  end
  num
end

# validate user input for numbers save to variable
def prompt_user_number(str)
  loop do
    prompt(MESSAGES[LANG][str])
    num = gets.chomp
    if valid_number?(num)
      num = valid_number?(num)
      return num
    else
      prompt(MESSAGES[LANG]['valid_number'])
    end
  end
end

# output message from user operator choice
def operation_to_message(op, num1, num2)
  case op
  when '1'
    MESSAGES[LANG]['operation_one'] + ": #{num1} + #{num2}"
  when '2'
    MESSAGES[LANG]['operation_two'] + ": #{num1} - #{num2}"
  when '3'
    MESSAGES[LANG]['operation_three'] + ": #{num1} * #{num2}"
  when '4'
    MESSAGES[LANG]['operation_four'] + ": #{num1} / #{num2}"
  end
end

# Welcome user and chose  and set language
prompt(MESSAGES['welcome'])
lang = ''
loop do
  lang = gets.chomp.downcase
  break if LANGUAGES.include?(lang)
  prompt(MESSAGES['valid_lang'])
end

LANG = lang

prompt(MESSAGES[LANG]['name'])
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES[LANG]['valid_name'])
  else
    prompt(MESSAGES[LANG]['greeting'] + "#{name}")
    break
  end
end

loop do # main loop
  # get user input and check if valid
  num1 = prompt_user_number('first_number')
  num2 = prompt_user_number('second_number')

  prompt(MESSAGES[LANG]['operator_prompt'])
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[LANG]['valid_operator'])
    end
  end

  prompt("#{operation_to_message(operator, num1, num2)}")

  # perform selected operation on numbers
  case operator
  when '1'
    result = num1 + num2
  when '2'
    result = num1 - num2
  when '3'
    result = num1 * num2
  when '4'
    if num2 == 0
      prompt(MESSAGES[LANG]['zero_division_error'])
    else
      result = num1 / num2.to_f
    end
  end

  # Output results and ask user to continue
  
  if result
    prompt(MESSAGES[LANG]['result'] + "#{result.round(2)}")
  else
    next
  end

  prompt(MESSAGES[LANG]['continue'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  system "clear"
end

prompt(MESSAGES[LANG]['end'])
