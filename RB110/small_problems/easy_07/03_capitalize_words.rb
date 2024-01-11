=begin
Write a method that takes a single String argument 
and returns a new string that contains the original 
value of the argument with the first character of 
every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

PROBLEM:
input: string
output: new string
-new string contains original values 
-the first letter of each word in new string is capitalized
- all other letters are lowercase
-words are sequence of characters without spaces
-the first character of a word might not be a letter and will not be capitalized

EXAMPLES:
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

DATA STRUCTURES:
input: string
intermediate: array for each word in string
output: new String

ALGORITHM:
- create variable `words` initialized to array of words from argued string
- iterate over `words`
 -capitalize each word 
-transform `words` to string

Solution using #capitalize

def word_cap(string)
words= string.split(" ")
words.each {|word| word.capitalize!}
words.join(" ")
end

=end

def word_cap(string)
  words= string.split(" ")
  new_words = words.map do |word| 
    word.downcase!
    word[0] = word[0].upcase
  end
  words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
