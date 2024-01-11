=begin

ALGORITHM:
- create array `numbers` that is result of adding previous two numbers up to the n + 1 index
=end

def fibonacci(n)
  numbers = [1, 1]
  index = 1
  loop do 
    numbers << (numbers[index] + numbers[index - 1])
    index += 1
    break if index == (n - 1)
  end
  numbers[-1]
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501