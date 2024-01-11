=begin
A p triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid p triangle, the sum of the lengths of the two shortest 
sides must be greater than the length of the longest side, and all 
sides must have lengths greater than 0: if either of these conditions 
is not satisfied, the p triangle is invalid.

Write a method that takes the lengths of the 3 sides of a p triangle as 
arguments, and returns a symbol :equilateral, :isosceles, :scalene, or 
:invalid depending on whether the p triangle is equilateral, isosceles, 
scalene, or invalid.

PROBLEM:
input: three integers
output: symbol
- output `:equilateral` if all three argued integers are equal and positive
- output: `:isosceles` if two argued integers are equal and one is less than the others
- output: `:scalene` if all three integers are of different values and are not invalid
- output: `:invalid`
  - one of integers is 0
  - one or more of integers is negative
  - the sum of the smallest two integers is less than the largest integer

EXAMPLES:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

DATA STRUCTURES:
input: three integers
output: symbol

ALGORITHM:
- check if invalid
- check if equilateral
- check if isoceles
- return :scalene

=end

def triangle(side1, side2, side3)
  tri = [side1, side2, side3]
  tri.sort!
  if tri[0] + tri [1] < tri[2] || tri.include?(0)
    return :invalid
  elsif side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
