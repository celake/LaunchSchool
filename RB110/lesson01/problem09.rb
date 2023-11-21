# given a string caplitalize each word

words = "the flintstones rock"

words_array = words.split
words_array.map do |word|
  word.capitalize!
end
title_words = words_array.join(' ')

p title_words