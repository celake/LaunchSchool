=begin
In the easy exercises, we worked on a problem where we had to 
count the number of uppercase and lowercase characters, as 
well as characters that were neither of those two. Now we want 
to go one step further.

Write a method that takes a string, and then returns a hash 
that contains 3 entries: one represents the percentage of characters 
in the string that are lowercase letters, one the percentage of 
characters that are uppercase letters, and one the percentage 
of characters that are neither.

You may assume that the string will always contain at least 
one character.

PROBLEM:
input: string
output: hash
- hash has three key value pairs
- lowercase => percentage of lowercase characters
- uppercase => percentage uppercase characters
- neither => percentage of non-alpha characters
- argued string will always contain at least one character

EXAMPLES:
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

DATA STRUCTURES:
input: string
intermediate: array 
output: hash

ALGORITHM:
- create hash `percentages` with three keys,  `lowercase`, `uppercase` and `neither` values are 0.0
- create array `characters` which is argued string as an array of characters
- inititate variable `size` to the length of `characters`
- iterate over characters
  - if character is lowercase
    - add to `lowercase` key value
  if character is uppercase
    - add to `uppercase` key value
  otherwise add it to `neither` key value
iterate over `percentages`
    - set each key value to value/ size
return `percentages`
=end

def letter_percentages(string)
  percentages = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  characters = string.chars
  size = characters.length
  characters.each do |char|
    if char =~ /[a-z]/
      percentages[:lowercase] += 1
    elsif char =~ /[A-Z]/
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end
  percentages.transform_values do |value|
    ((value / size) * 100).round(1)
  end
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')