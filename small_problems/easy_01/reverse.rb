# given a positive integer
# define a function that accepts an iteger as an agument
# iterate over the integer reversing its digits

=begin
  START
  # given on integer called num
  SET reversed_num = ""
 
  DEFINE a method that accepts num as an argument
  SET num = num to string
  WHILE index < num length
    SET digit = num pop
    SET reversed_num = reversed_num unshift
    index = index +1
  RETURN reversed_num to integer
=end

reversed_num = ""

def reversed_number(num)
  num_s = num.to_s
  num_s.reverse!  #  tied a loop with .pop which did not work, while consulting docs I was reminded that there is actually a reverse method.
  num_i= num_s.to_i
end

p reversed_number(12345)