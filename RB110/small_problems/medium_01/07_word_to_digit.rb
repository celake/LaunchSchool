=begin
Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the 
words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
converted to a string of digits.

PROBLEM:
-input string with some possible number words
- output string with all number words converted to numbers(digits)
-maintain spaces between numbers as they were with words

EXAMPLES:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

DATA STRUCTURES:
input: string
intermediate: array
output: string
assistant: hash

ALGORITHM:
- initialize variable `words` equal to argued as an array of words
- create hash `numbers` with key as the number word as a string and value is the number as a string
- array puctuation with period, comma question mark and exclamation point
- iterate over `words`
  -check if word ends with punctuation
    - if yes 
      - remove puctuation and store in variable `ending`
  if the word is in the `numbers` 
    - replace with the value
    - if punctuation
      add `ending` value to end of current string
- convert `words` to string

=end

def word_to_digit(string)
  numbers = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
             'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0' }.freeze
  numbers.keys.each do |word|
    string.gsub!(/\b#{word}\b/, numbers[word])
  end
  string
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'