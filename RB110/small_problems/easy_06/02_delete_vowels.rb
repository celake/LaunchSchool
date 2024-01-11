=begin
Write a method that takes an array of strings, 
and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

PROBLEM:
Input: array of strings
Output: array of same string values with vowels removed
- vowels are a, e, i, o ,u
- returns same array??
- characters can be upper or lowercase


EXAMPLES:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

DATA STRUCTURES: 
input: array of strings

output: array of strings
assistant: array of vowels

ALGORITHM:
-interate over argued array
  -iterate over each elelment of array
    -select only non-vowels

=end

def remove_vowels(array)
  vowels = %w(a i e o u A E I O U)
  result = []
  array.each do |string|
    no_vowels = ''
    string.each_char do |char|
      no_vowels << char unless vowels.include?(char)
    end
    result << no_vowels
  end
  result
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']