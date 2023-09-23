# Givin a positive integer
# define a method that takes on integer n
# iterate n times outputing "*" index times to create triangle
=begin

  START
  # given positive integer

  define a method that accepts one integer called num
  SET index = 1
  WHILE index < num
    SET str = " " * (num - index) + "*" * index
    PRINT str
    index += 1

=end

def triangle(num)
  index = 1
  num.times do
    str = (" " * (num - index)) + ("*" * index)
    puts str
    index += 1
  end
end

def upsidedown(num)
  index = 0
  num.times do
    str = ("*" * (num - index)) + (" " * index)
    puts str
    index += 1
  end
end

def top_right(num)
  index = 0
  num.times do
    str = (" " * index) + ("*" * (num - index))
    puts str
    index += 1
  end
end

def bottom_left(num)
  index = 1
  num.times do
    str = ("*" * index) + (" " * (num - index))
    puts str
    index += 1
  end
end

triangle(7)
puts " "
upsidedown(7)
puts " "
top_right(7)
puts
bottom_left(7)
