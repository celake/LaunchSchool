=begin
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each wo
rd. For example,

p solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

PROBLEM:
input: string
output: integer
- count each letter that is in the same place that it is in the english alphabet
- letters can be upper or lowercase
- only alphabetical characters

EX
AMPLE


p 
solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) ==[1, 3, 1, 3]

DATA STRUCTURES:
input: array of strings
output: array
assistant: array of alphbetic characters

ALGORITHM:
- create `alphabet` array of characters of the alphabet
- iterate over argued array 
  - create `count` variable = to 0
  - iterate over current string
    - if letter at current index equals character at same index in `alphabet`
    - increment count by one
  - add count to `results`
-return `results`

=end

def solve(array)
  alphabet = ('a'..'z').to_a
  results = []
  array.each do |word|
    count = 0
    word.downcase.chars.each_with_index do |letter, index|
      if letter == alphabet[index]
        count += 1
      end
    end
  results << count
  end
  results
end

p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) ==[1, 3, 1, 3]

