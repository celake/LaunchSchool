require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# ask the user for two numbers
# ask the user for an operation ot perform
# perform the operation on the twonumbers
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

def operation_to_message(op)
  case op
  when '1'
    MESSAGES[LANG]['operation_one']
  when '2'
    MESSAGES[LANG]['operation_two']
  when '3'
    MESSAGES[LANG]['operation_three']
  when '4'
    MESSAGES[LANG]['operation_four']
  end
end

prompt(MESSAGES['welcome'])
lang = ''
loop do
  lang = gets.chomp.downcase
  break if LANGUAGES.include?(lang)
  prompt(MESSAGES['valid_lang'])
end

LANG = lang

prompt (MESSAGES[LANG]['name'])
name = gets.chomp
prompt(MESSAGES[LANG]['greeting'] + "#{name}")

loop do # main loop
  # get user input and check if valid
  loop do
    prompt(MESSAGES[LANG]['first_number'])
    num1 = gets.chomp
    if valid_number?(num1)
      num1 = valid_number?(num1)
      break
    else
      prompt(MESSAGES[LANG]['valid_number'])
    end
  end
  # get user input and validate
  loop do
    prompt(MESSAGES[LANG]['second_number'])
    num2 = gets.chomp
    if valid_number?(num2)
      num2 = valid_number?(num2)
      break
    else
      prompt(MESSAGES[LANG]['valid_number'])
    end
  end

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

  prompt("#{operation_to_message(operator)}")

  # perform selected operation on numbers
  case operator
  when '1'
    result = num1 + num2
  when '2'
    result = num1 - num2
  when '3'
    result = num1 * num2
  when '4'
    result = num1 / num2
  end

  prompt(MESSAGES[LANG]['result'] + "#{result}")

  prompt(MESSAGES[LANG]['continue'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES[LANG]['end'])
