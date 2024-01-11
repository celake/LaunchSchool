=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

PROBLEM:
input: string
output: hash
- hash key is number of occurances (integer)
- hash value is an array of characters with "key" count
- case insensitive
- remove special characters
- numerial digits are counted

DATA STRUCUTRES:
input: string
output: hash

ALGORITHM:
- create `results` =  empty hash
- `working_string` is argued string with only alphabetic characters and digits
- uniq_chars = `working_string` with duplicates removed
iterate over uniq_chars 
  - count how many times char occures store in variable `count`
  - if count is in keys
    -add character to the value array
  -otherwise
    - add this to `results` count number is key and char is in an array
retrun results
=end

def get_char_count(string)
  results = {}
  working_string = string.downcase.delete('^a-z1-9')
  uniq_chars = working_string.downcase.chars.uniq
  uniq_chars.each do |char|
    count = working_string.count(char)
    if results.keys.include?(count)
      results[count] << char
    else 
      results[count] = [char]
    end
  end
  results.values.each do |array|
    array.sort!
  end
  results.sort_by {|k, v| k}.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
# 
