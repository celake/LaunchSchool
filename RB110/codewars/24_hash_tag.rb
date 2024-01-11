=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

PROBLEM:
input: string
output: string or false
- output string first letter capitalized
- starts with a `#`
- returns false if more than 140 characters
- returns false if input string is emtpy

Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

DATA STRUCUTRES:
- return false if argued string is empty
- create an array `words` input string separated into words
- create `hashtag` string equals `#`
- iterate over `words`
  - word downcase then capitalize
  - push the new word into the `hashtag`
-check if hashtag lenght is greate 140 
  - if yes return false
  -otherwise return `hashtag`
=end

def generateHashtag(string)
  return false if string.squeeze == ' ' || string == ''
  words = string.split
  hashtag = "#"
  words.each do |word|
    hashtag << word.downcase.capitalize
  end
  if hashtag.length > 140
    false
  else
    hashtag
  end
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false

