=begin
#given one integer positive, negative or zero
-dertermine if the number is odd or even 
- return true if the number is odd

START
#given one integer positive, negative or zero
  define method that takes one argument called "n"
  IF n is odd return true
  ELSE return false
=end

def is_odd?(n)
  if n%2 == 1
    return true
  else 
    return false
  end
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true