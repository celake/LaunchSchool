# prompt user for 6 numbers
# push first 5 numbers to an array
# check if the 6th number is in the array

ordinals = %w(1st 2nd 3rd 4th 5th last)
index = 0
numbers = []

loop do
  puts "Enter the #{ordinals[index]} number: "
  if index < 5
    numbers << gets.chomp.to_i
    index += 1
  else
    final_number = gets.chomp.to_i
    if numbers.include?(final_number)
      puts "The number #{final_number} appears in #{numbers}."
    else
      puts "The number #{final_number} does not appear in #{numbers}."
    end
    break
  end
end