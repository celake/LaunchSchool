=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

PROBLEM:
input: two string
output: interger
- number of letters from both strings that need to be removed
- letter will be in lowercase

DATA STRUCUTRES:
input: two strings
int:
output: integer

ALORITHM:

- if one string is empty return size of second string
- find shortes input string
- iterate over the charactes of that string
  - if the character is in both strings
    - remove it from both strings
count the number of character left in the strings 


=end

def anagram_difference(str1, str2)
  return str2.size if str1 == ''
  return str1.size if str2 == ''
  if str2.length < str1.length
    longest = str1
    shortest = str2
  else 
    longest = str2
    shortest = str1
  end
  shortest.each_char do |char|
    if shortest.include?(char) && longest.include?(char)
      shortest.sub!(char, "")
      longest.sub!(char, "")
    end
  end
  total = shortest.size + longest.size
end


p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

