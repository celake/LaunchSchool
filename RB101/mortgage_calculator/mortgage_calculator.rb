require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

# get loan amount from user
# get APR from user
# get loan duration in months from user
# convert APR to mothly interest rate
# calculate monthly payment
# output monthly payment for user

=begin
START

GET user input for loan amount
SET user input to variable 'loan_amount'
GET user input for APR
SET user input to "apr" 
SET variable called 'monthly_interest' = apr/12
GET user input for lenght of loan
SET variable caleed 'loan_period' to user input

SET variable called 'monthly_payment' to loan_amount * (monthly_interest/ (1 - (1 + monthly_interest) ** (-loan_perieod)))
=end

###
# Helper Methods
###

def prompt(message)
  puts "=> #{message}"
end

def valid_entry(str)
  loop do
    prompt(MESSAGES[str])
    input_string = gets.chomp
    if input_string.to_i.to_s == input_string
      num = input_string.to_f
      return num
    else
    prompt(MESSAGES['valid_number']) unless num.number?
    end
  end
end

def convert_interest(apr)
  monthly = (apr / 100) / 12
  monthly
end

def calculate_monthly_payments(annual_percentage_rate, loan_period, loan_amount)
  monthly_interest = convert_interest(annual_percentage_rate)
  monthly_payment = loan_amount * (monthly_interest/ (1 - (1 + monthly_interest) ** (-loan_period)))
  puts "Your monthly payments for your loan of $#{loan_amount}, at #{annual_percentage_rate}% APR for #{loan_period} months is: #{monthly_payment.round(2)}"
end

###
# Main
###

prompt(MESSAGES['welcome'])
name = gets.chomp
prompt("Hello #{name}.")

loop do # MAIN LOOP
  loan_amount = valid_entry(MESSAGES['loan_amount'])
  annual_percentage_rate = valid_entry(MESSAGES['percentage_rate'])
  loan_period = valid_entry(MESSAGES['loan_duration'])
  calculate_monthly_payments(annual_percentage_rate, loan_period, loan_amount)
  prompt(MESSAGES['another_calculation'])
  continue = gets.chomp.downcase
  if continue == 'y'
    system 'clear'
    next
  else
    break
  end
end

prompt(MESSAGES['thank_you'])
prompt(MESSAGES['goodbye'])