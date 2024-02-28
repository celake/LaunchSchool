=begin
Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

An equilateral triangle has all three sides the same length.
An isosceles triangle has exactly two sides of the same length.
A scalene triangle has all sides of different lengths.

Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.

PROBLEM
- create triangle object with three sides given at instantiation
- create a kind method
  - input: three integers
  - output: string: triangle type Equalaterl, isosceles, scalene or ArgumentError
  - equilateral triangle has all three sides the same length
  - isosceles triangle has exactly two sides of the same length
  - scalene triangle has all sides of different lengths
  - ArgumentError if any arguemnt is less than 0 or sum of lengths of two sides is less than the other side

EXAMPLES:
  if kind is called on the triangle initialized with these arguements: 

  kind(10, 10, 10) == 'equilateral'
  kind(4, 3, 4) == 'isosceles'
  kind(3, 4, 5) == 'scalene'
  kind(0, 0, 0) == ArgumentError
  kind(1, 1, 3) == ArgumentError

DATA STRUCTURES:
  input: integers
  output: string
  

ALGORITHM:
  - if any argument is < 1 return error
  - loop through arguments
    - if sum of any  two arguents is greater than third arguemnt return error
  if all arguments are equal return 'equalateral'
  else if two arguements are the same return 'isosceles'
  otherwise return 'scalene'
=end



class Triangle

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    check_arguments
  end

  def check_arguments
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 || @s1 + @s2 <= @s3 || @s1 + @s3 <= @s2 || @s2 + @s3 <= @s1
      raise ArgumentError.new "Invalid side lengths."
    end
  end

  def equilateral_equal_sides
    self.kind
  end

  def kind
    if @s1 == @s2 && @s2 == @s3
      return 'equilateral'
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      return 'isosceles'
    else 
      return 'scalene'
    end
  end
end