require 'pry'


def sequence(num)
  return (1..num).to_a if num > 0
  (num..1).to_a if num < 0
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)