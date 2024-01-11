=begin
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

PROBLEM:
input: two string
output: string
- convert every word in first string to first letter capitalized
- if the word is in the second string, do not capitalize unless it is the first word
- words may all uppercase or all lowercase
-does output need to be a differnet string than string 1?

EXAMPLES:
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

DATA STRUCTURES:
input: two strings
output: one string

ALGORITHM:
- create `words` array of words from str1 []
- create `results` []
- `exceptions` = str2 words downcased
- iterate over `words`
  - is it the first word?
    - downcase
     - capitalize
     - push to results
  - otheriwse: dowcase and check if it is in the `exceptions array` (incude?)
    - push to results
  - otherwise: 
    downcase and capitalize
    push to results

results joined with a space

=end

def title_case(str1, str2= '')
  words = str1.split
  exceptions = str2.split.map {|word| word.downcase}
  results = []
  words.each_with_index do |word, index|
    if index == 0
      results << word.downcase.capitalize
    elsif exceptions.include?(word.downcase)
      results << word.downcase
    else
      results << word.downcase.capitalize
    end
  end
  results.join(' ')
end



p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
