(10..100).find {|num| num == 42}  #returns nil if number not

# easier...
(10..100)cover?(42)  #returns true or false
