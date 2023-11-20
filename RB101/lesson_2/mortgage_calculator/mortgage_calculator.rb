require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')
MONTHS_IN_YEAR = 12
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

SET variable called 'monthly_payment' to formula
=end

###
# Helper Methods
###

def prompt(message)
  puts "=> #{message}"
end

def valid_entry?(str)
  loop do
    prompt(MESSAGES[str])
    input_string = gets.chomp.strip
    if input_string.to_i.to_s == input_string && input_string.to_i > 0
      return input_string.to_f
    else
      prompt(MESSAGES['valid_number'])
    end
  end
end

def user_validate_continue
  loop do
    prompt(MESSAGES['another_calculation'])
    continue = gets.chomp.downcase
    if continue == 'y'
      return true
    elsif continue == 'n'
      break
    else
      prompt(MESSAGES['valid_input_exit'])
    end
  end
end

def convert_interest_to_monthly(apr)
  (apr / 100) / MONTHS_IN_YEAR
end

def calculate_monthly_payments(annual_percentage_rate, loan_period, loan_amount)
  monthly_interest = convert_interest_to_monthly(annual_percentage_rate)
  monthly_payment = loan_amount * (monthly_interest /
  (1 - ((1 + monthly_interest)**(-loan_period))))
  puts "Your monthly payments for your loan of $#{loan_amount}, at #{annual_percentage_rate}% APR for #{loan_period} months is: #{monthly_payment.round(2)}"
end

###
# Main
###
system 'clear'

prompt(MESSAGES['welcome'])
name = gets.chomp.strip
prompt("Hello #{name}.")

loop do # MAIN LOOP
  loan_amount = valid_entry?('loan_amount')
  annual_percentage_rate = valid_entry?('percentage_rate')
  loan_period = valid_entry?('loan_duration')
  calculate_monthly_payments(annual_percentage_rate, loan_period, loan_amount)

  next if user_validate_continue == true

  prompt(MESSAGES['thank_you'])
  prompt(MESSAGES['goodbye'])
  break
end
