# prompt user for name
# user name in variable "name"
# if user name ends in "!" output greeting in all caps
# else greet user

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end
