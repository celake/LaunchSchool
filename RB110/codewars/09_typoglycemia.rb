=begin
Background
There is a message that is circulating via public media that claims a reader can 
easily read a message where the inner letters of each words is scrambled, as long 
as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the 
letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, 
but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

PROBLEM:
-input: string
-output: string with characters in words (sequences of characters separated by spaces)
         in alphabetical order, except first last and non-alphabetic characters
- punctution is `-` `'` `,` and `.`
- capitalization can be ignored
- non-alphabetic characters that begin/end word do not count as first/last letter

EXAMPLES:
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

DATA STRUCTURES:
input: string
intermediate: array
output: string
assistant: array of special characters
assistant?: array of letters 

ALGORITHM:
- create `punctuation` hash 
- create `words` array of words in argued string
- itera',te over each `word` in  `words`
  - remove all puctuation and add index number to hash
  - reverse substring word[1..-2]
  - iterate over hash and add puncutation
make `words` array a string
=end

def scramble_words(string)
  return string if string.length == 1
  punctuation = ['-', "'", '.', ',']
  words = string.split
  result = []
  words.each do |word|
    character_order = {}
    new_word = ''
    word.each_char.with_index do |char, index|
      if punctuation.include?(char)
        character_order[index] = char
      else
        new_word << char
      end
    end 
    if new_word.length > 1
      new_word = new_word[0] + new_word.chars[1..-2].sort.join + new_word[-1]
    end
    character_order.each do |k, v|
      new_word.insert(k.to_i, v)
    end
    result << new_word
  end
  result.join(" ")
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
