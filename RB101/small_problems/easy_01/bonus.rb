# given one integer and one boolean
# define a function that takes two arguments
# if the boolean is true calculate and return integer / 2
# if the boolean is false return 0

def calculate_bonus(int, bool)
  bool ? (int / 2) : 0
end

puts calculate_bonus(1000, true)
puts calculate_bonus(3000, false)
