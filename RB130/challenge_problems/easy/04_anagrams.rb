=begin
Write a program that takes a word and a list of possible anagrams and selects the correct sublist that contains the anagrams of the word.

For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets", and "banana", the program should return a list containing "inlets". Please read the test suite for the exact rules of anagrams.

PROBLEM 1: find anagrams in string (`match` instnce method)

input: string and array of strings
output: output: array of strings from input array that are anagrams of initial argued string
if no anagrams found return empty string
assume array only contains strings as elements
the same word is not an anagram
anagrams are case insensitive

EXAMPLES
DATA STRUCTURES
input: string, array
output: array
no helpers needed

ALGORITHM:
create empty array `anagrams`
iterate over array
  - if argues string sorted == array element sorted
    add to `anagrams`
return anagrams

=end

class Anagram
  def initialize(word)
    @word = word
  end

  def match(array)
    array.select do |element|
      element = element.downcase
      word = @word.downcase
      word.chars.sort == element.chars.sort unless word == element
    end
  end
end


