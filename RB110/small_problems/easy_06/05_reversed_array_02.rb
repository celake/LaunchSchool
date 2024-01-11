# def reverse(array)
#   new_array = array.dup
#   length = new_array.length/2
#   left_index = 0
#   right_index = -1
#   length.times do |n|
#     new_array[right_index], new_array[left_index] = new_array[left_index], new_array[right_index]
#     left_index += 1
#     right_index -= 1
#   end
#   new_array
# end

def reverse(array)
  array.reduce([]) do |new_array, element|
    new_array.prepend(element)
  end
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true