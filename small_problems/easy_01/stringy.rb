# given a positive interger
# create a method that accepts one argument
# iterate the length of the string
# return alternating ones and zeros the lenght of the string starting with one.

def stringy(size, start = 1)
  str = ""
  for int in 1..size
    if start == 1
      str2 = int.even? ? 0 : 1
    else
      str2 = int.even? ? 1 : 0
    end
    str += str2.to_s
  end
  puts str
end

stringy(12)
