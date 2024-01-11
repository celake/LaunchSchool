=begin

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

 PROBLEM:
input: string
ouptpu: string
- reverse the case of each character 
- reverse the order of the words
- remove any extra spaces 
- input only spaces and alpha characters

DATA STRUCTURES:
input:strig
int: array
output: strig

ALGORITHM:
- convert input string into string of word (space separated)
- interate over each word
  - swapcase and add to results array
- reverse the order of the word in the array
- convert array to string


Expected: "bLING hOTLINE  that  wHEN kNOW yOU", instead got: "bLING hOTLINE that wHEN kNOW yOU"
=end

def string_transformer(string)
  swapcased = string.swapcase

  swapped_array = swapcased.split

  return_string = swapcased.reverse
  reversed_words = return_string.split(' ')
  
  return_string
end

p string_transformer('Example   string') #== 'STRING   eXAMPLE'