# def all_pairs(array)
#   results = []
#   array.sort
# (0..array.size).each do |index|
#   if array[index + 1] 
#     results << [array[index], array[index + 1]]
#   end
# end
#   results.select {|array| (array[1] - array[0]).abs == 2}
# end

# p all_pairs([1, 2, 3, 4]) #== [[1, 3], [2, 4]]
# p all_pairs([4, 1, 2, 3]) #== [[1, 3], [2, 4]]
# p all_pairs([1, 23, 3, 4, 7]) == [[1, 3]]

=begin 
write a fmethod scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to matech str2, otherwise return false
only lowecase letters will be used.  no punctuation or digits

PROBLEM:
input: two strings
output: boolean
- if all characters in string 1 are in string 2 return true
- all lowercase characters - no puctuation or spacial characters or digits

EXAMPLES:
p scramble('javaass', 'jjss')  == false
p scramble('rkqodlw', 'world')  == true
p scramble('cedewaraaossoqqyt', 'codewars')  == true
p scramble('katas', 'steak')  == false
p scramble('scriptjava', 'javascript')  == true
p scramble('scriptingjave', 'javascript')  == true

DATA STRUTURES:
input: two stirngs
output; boolean

ALGORTHIM:
-loop over each character of the second stirng
  - find the count of each character in str2 and str 1

=end
  
def scramble(str1, str2)
  str2.chars.all? do |char|
    #p "current char: #{char}"
    #p "count in str 1: #{str1.count(char)}"
    #p "count in str 2: #{str2.count(char)}"
    str1.count(char) >= str2.count(char)
  end
end


p scramble('javaass', 'jjss')  == false
p scramble('rkqodlw', 'world')  == true
p scramble('cedewaraaossoqqyt', 'codewars')  == true
p scramble('katas', 'steak')  == false
p scramble('scriptjava', 'javascript')  == true
p scramble('scriptingjava', 'javascript')  == true