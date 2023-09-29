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

puts "Enter the loan amount:"
loan_amount = gets.chomp.to_f
puts "Enter the annual percentage rate:"
apr = gets.chomp.to_f
monthly_interest = (apr / 100) / 12
puts "Enter the loan duration:"
loan_period = gets.chomp.to_f

monthly_payment = loan_amount * (monthly_interest/ (1 - (1 + monthly_interest) ** (-loan_period)))

puts "Your monthly payments for your loan of $#{loan_amount}, at #{apr}% APR for #{loan_period} months is: #{monthly_payment.round(2)}"