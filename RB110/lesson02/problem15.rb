arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# interate through array each hash is `element`
# iterate throuth each hash value, value is `value`
# call `all?` method on value, return pair if all integers are even.


a = arr.select do |element|
  element.all? do |_, value| 
    value.all?  do |num| #=> boolean
      num.even?
    end  
  end
end

p a