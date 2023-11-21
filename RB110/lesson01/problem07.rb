#Create a hash that expresses the frequency 
#with which each letter occurs in this string:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

=begin
PE:
input - string
output - hash
Rules:
  non-empty string
  only alphabetic charachters
  Does characters in different case need a new key
D: 
- string
- hash
A:
-create variable referencing empty hash
convert string to array
iterate over array
  - check if letter is key in hash
  - if letter not in hash add to hash with value of 1
  - if letter in hash increase value by 1
return hash
=end


statement = "The Flintstones Rock"

letter_count = {}
statement_array = statement.chars  
statement_array.each do |item|
  if letter_count.key?(item)
    letter_count[item] = letter_count[item] += 1
  else
    letter_count[item] = 1
  end
  letter_count
end

p letter_count