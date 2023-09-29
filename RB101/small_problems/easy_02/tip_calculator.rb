# create float variable of user input for amount of the bill
# acreate float variable for user input of percentage tip to user
# output the amount of the tip rounded to two decimals
# output the total amount of the bill including tip rounded to two decimals

puts "What is the bill?"
bill_amount = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip = (bill_amount * tip_percentage / 100).round(2)
total_bill = (tip + bill_amount).round(2)
puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"
