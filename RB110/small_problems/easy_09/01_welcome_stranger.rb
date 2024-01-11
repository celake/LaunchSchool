=begin
Create a method that takes 2 arguments, an array 
and a hash. The array will contain 2 or more 
elements that, when combined with adjoining spaces, 
will produce a person's name. The hash will contain 
two keys, :title and :occupation, and the 
appropriate values. Your method should return a 
greeting that uses the person's full name, and 
mentions the person's title and occupation.

PROBLEM:
input: array and hash
output string 
-array contains person's full name (always three elements?)
- hash containts title and occupation
- output string 'Hello `full name`! Nice to have a `title` `occupation` arround.'

EXAMPLES:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

DATA STRUCTURES:
input: array and hash
output: string
 
ALGORITHM:
- use string interpolation to create string
=end

def greetings(array, hsh)
"Hello #{array.join(' ')}! Nice to have a #{hsh.values.join(' ')} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around."
