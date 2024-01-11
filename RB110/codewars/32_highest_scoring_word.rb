=begin
  Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

PROBLEM:
input: string - sequence of words
output: string - single word
- score of words are character points based on position in the alphabet
- return the first highest scoring word if there are more than one
- all inputs are in lowercase and valid

EXAMPLES:
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'

DATA STRUCTURES:
input: string
int: array of the word in input string
output: string 
assitant array: lowercase alphabet

ALGORITHM:
- create `alpha` lowercase alphabet
- create `words` input string with the words as elements
- create array `totals`
- iterate over the `words` 
  - create `score` equal to zero
  - iterate over each character 
    find the character index number 
    add index number to the score
  - check if score
get first max value of totals

=end
def high(string)
  alpha = ('a'..'z').to_a
  words = string.split
  totals = []
  words.each do |word|
    score = 0
    word.each_char do |char|
      score += (alpha.index(char) + 1)
    end
    totals << [word, score]
  end
  totals.max_by {|elem| elem[1]}[0]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'


