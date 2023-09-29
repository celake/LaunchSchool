# prompt user for input legnth and width in meters
# use the length and width to calculate the area of a room in meters
# calculate the area of a room in feet
# output the area in meters and feet


puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
area_feet = (area * 10.7639).round(2)

puts "the area of the room is #{area} square meters (#{area_feet} square feet)"
