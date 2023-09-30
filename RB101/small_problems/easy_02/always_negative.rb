def negative(num)
  num = num.to_i
  if num > 0
    return -num
  elsif num < 0
    return num
  else
    return 0
  end
end

puts negative(5)
puts negative (-3)
puts negative (0)