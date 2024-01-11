=begin

The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"

PROBLEM:
input: string
output: stirng
- characters need to be in case insensitive alphabetical order
- letter that appears first should be first in the alphabetical order
- remove all whitespace and non-alpha characters

EXAMPLES:
alphabetized("The Holy Bible") # "BbeehHilloTy"  TheHolyBible

DATA STRUCTURES:
input: string
ouptput: string
int: hash

ALGORITHM:
- string = string with all spaces removed using delete 
- letters = {}
- iterate over each character of string
   if char downcase not in key
      - add lP[lowercase character] = [char]
    otherwise
      lp[lowercase character] << char
array of values and join without spaces
=end

def alphabetized(string)
  string = string.delete('^a-zA-Z')
  letters = {}
  string.each_char do |char|
    if letters.keys.include?(char.downcase)
      letters[char.downcase] << char
    else
      letters[char.downcase] = [char]
    end
  end
  letters.values.flatten.join
end


p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
