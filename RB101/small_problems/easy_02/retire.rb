# create a new Date that outputs the current year
# ask users for current age as an iteger
# create variable called 'age'
# ask user for age they would like to retire as an iteger
# create variable called 'retire_at'
# output current year and year that user will retire
# output how many years left of work

year = Time.new.year

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_at = gets.chomp.to_i
years_to_retirement = retire_at - age
retirement_year = year + years_to_retirement

puts "its #{year}. You will retire in #{retirement_year}"
puts "You have only #{years_to_retirement} years of work to go!"
