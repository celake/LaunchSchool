# given a string
# define a method that accepts one string argument
# create a border in the form of +-----+ on the top and bottom
# and three | for each side.

def print_in_box(str)
  # top and bottom border
  top_bottom = "+"
  len = str.length + 2
  len.times { top_bottom += "-" }
  top_bottom += "+"
  # side border
  side = "|"
  len.times { side += " " }
  side += "|"
  # add border to str
  print_str = "| #{str} |"
  puts top_bottom
  puts side
  puts print_str
  puts side
  puts top_bottom
end

print_in_box('')
