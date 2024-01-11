words = "The Flintstone Rock!"

10.times do 
  puts words
  words.prepend(" ")
end

# a shorter way to do the same thing:
# 10.times {|number| puts (" " * number) + words}