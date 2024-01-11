=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.
Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]

Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.

PROBLEM:
input: string of text
output: top 3 most occuring words as array elements
- word is string of letters and apostrophes (all other needs to be removed)
- case insensetive results all lowercase
- if less than three words - return all words
- if empty return an empty array
- if there is a tie does't matter which ones to return first

DATA STRUCTURES
input: string
int: hash? 
output: array

ALGROITHM:
-- remove all characters that are not alpha or apostrophy
-- `counts` intialized to a hash
-- create array of words from the argued string
-- iteratate over each word
  -- put word in hash and increment value
-- iterate over hash
  - return max  3 values 



=end

def top_3_words(string)
  string = string.downcase.delete("^a-z' ")
  counts = Hash.new(0)
  words = string.split
  words.each do |word|
    counts[word] += 1
  end
  top_three_words = counts.max_by(3) {|key, value| value}
  top_three_words.map {|subarr| subarr.delete_at(0)}
end

p top_3_words("In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. An olla of rather more beef than mutton, a salad on most nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extraon Sundays, made away with three-quarters of his income.") == ["a", "of", "on"]

p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]

p top_3_words("  //wont won't won't") == ["won't", "wont"]