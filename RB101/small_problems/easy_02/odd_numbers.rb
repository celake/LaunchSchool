# 100.times {|i| puts i if i % 2 == 1}

# 1.upto(100) {|i| puts i if i.odd?}

arr = (1..100).to_a
puts arr.select {|num| num.odd?}