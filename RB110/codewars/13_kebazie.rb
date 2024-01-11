=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

PROBLEM:
- input: string  single word in camel case (new word starts with capital letter)
- output: string in kebab case
- same string? 
- kebab is all lowercase
- kebab has dashes between the words
- does not have numbers
-other symbols? 

DATA STRUCTURES:
input: string
output is string

ALGORITHM:
-remove all digits from argued string assign it to `kebab`
-iterate over the`kebab` and if letter is uppercase replace it with a `-` and lowercase letter

=end

def kebabize(string)
  string = string.delete('1234567890')
  kebab = ''
  string.each_char do |char|
    if string.index(char) == 0
      kebab << char.downcase
    elsif char == char.upcase 
      kebab << "-" << char.downcase
    else
      kebab << char
    end
  end
  kebab
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
