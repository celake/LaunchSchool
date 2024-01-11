=begin
  # Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

PROBLEM:
input: string
output: string
- every third word upcase every other charACter starting with the second character
- if the third only has one character dont upcase anything

EXAMPELS:

DATA STRUCTURES:
input: stirng
intermediate: array 
output: string

ALGORITHM:
- create string equal to a duplicate of the argued string
- create `words` argued string with words as elements (space separated characters)
- create `word_counter` = 2
- iterate over each word
  if current word index is `word_counter`
    loop over characters
       upcase if character index odd
 string      
=end

def to_weird_case(string)
  words = string.split(' ')
  result = []
  words.each_with_index do |word, word_index|
    if (word_index + 1) % 3 == 0
      new_word  = ''
      word.chars.each_with_index do|char, char_index|
        if char_index.odd?
          new_word << char.upcase!
        else
          new_word << char
        end
      end
      result << new_word
    else
      result << word
    end
  end
  result.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'