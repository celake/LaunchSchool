=begin
Write a method that displays an 8-pointed star in an nxn grid, 
where n is an odd integer that is supplied as an argument to 
the method. The smallest such star you need to handle is a 7x7 grid.


PROBLEM:
input: integer representing grid
output: 8 pointed star
- n is always odd and positive
- n is always greater than 6
-top row stars = n/2 and spaces = n - stars
-each row remove spaces
-row above and below middle row is n/2 stars centered
-middle row justs n stars
-rows below middle row mirror rows above middle row. 

EXAMPLES:
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

DATA STRUCTURES:
input: integer
output: '*' and returns nil

ALGORITHM:
- create `spaces` (n - 3)/2
- iterate spaces to spaces = 1 times
  create line
  print centered line
-print above mid line
- print mid line 
-print below mid line
iterate opposite way for bottom lines

=end

def print_row(n, spaces, middle)
  middle = n
  string = "*" + " "*spaces + "*" + " "*spaces + "*" 
  puts string.center(middle)
  puts " "
end

def star(n)
  spaces = (n - 3)/2
  middle = n/2
  spaces.downto(0) do|space|
    print_row(n, space, middle)
  end
  puts "*" * n
  puts " "
  0.upto(spaces)  do |space|
    print_row(n, space, middle)
  end
end

star(7)
star(9)