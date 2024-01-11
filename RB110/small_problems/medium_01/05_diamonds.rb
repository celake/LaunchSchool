=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

PROBLEM:
Input: integer
Output: strings of `*` in shape of diamond
- input `n` is height and largest width of diamond
- `n` is always odd

EXAMPLES:

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

DATA STRUCTURES:
input: integer
intermediate: 
output: strings printed to screen
assistant: 

ALGORITHM:
  -variable 'n' is current line number
- loop until `n` is equal to arued integer
  -create string with `n` number of `*`
  -center string on line with argued integer length
  - increment `n`
-loop until `n` is equal to argued integer - 1
  -create string with `n` number of `*`
  -center string on line with argued integer length
  -decrement `n`
=end

def rows(line,)
 
end

def diamond(size)
  n = 1
  loop do 
    row = '*'*n 
    puts row.center(size)
    puts ''
    break if n >= size
    n += 2
  end
  n -= 2
  loop do 
    row = '*'*n 
    puts row.center(size)
    puts ''
    n -= 2
    break if n <= 0
  end
end


diamond(9)