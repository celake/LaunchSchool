# def sum_of_squares(array)
#   result = array.map.with_index do |num, index| 
#     if index % 2 == 0
#       num* num
#     else
#       0
#     end
#     en
#     result.sum
# end

# numbers = [1, 2, 3, 4, 5]
# p sum_of_squares(numbers) # => 55 (1^2 + 2^2 + 3^2 + 4^2 + 5^2)



def remove_duplicates(array)
  # Your implementation here without using uniq
end

dup_array = [1, 2, 3, 1, 2, 4, 5]
p remove_duplicates(dup_array) # => [1, 2, 3, 4, 5]


def remove_duplicates_change_to_word(array)
  array.select.with_index do |num, index|
    array.index(num) == index
  end
end

dup_array = [1, 2, 3, 1, 2, 4, 5]
p remove_duplicates_change_to_word(dup_array) # => ['one', 'two', 'three', 'four', 'five']