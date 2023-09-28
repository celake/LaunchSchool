# given a non-empty string
# calculate the middle of the string
# return one middle characters if odd
# return two middl characters if even

=begin
  START
  #given on non-empty string called str
  DEFINE a method that accepts str
  SET a number equal to the center of the string called mid
  IF the string is odd
    RETURN string[mid - 1]
  ELSE
    RETURN string slice of index (mid - 1) and mid
=end

def center_of(str)
  mid = str.length/2
  if mid % 2 == 1
    return str[mid]
  else
    return str.slice!((mid - 1)..mid)
  end
end

p center_of("I Love Ruby")
p center_of("x")
p center_of("LaunchSchool")
