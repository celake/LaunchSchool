=begin
The diamond exercise takes as its input a letter, and outputs it in a diamond shape. Given a letter, it prints a diamond starting with 'A', with the supplied letter at the widest point.

The first row contains one 'A'.
The last row contains one 'A'.
All rows, except the first and last, have exactly two identical letters.
The diamond is horizontally symmetric.
The diamond is vertically symmetric.
The diamond has a square shape (width equals height).
The letters form a diamond shape.
The top half has the letters in ascending order.
The bottom half has the letters in descending order.
The four corners (containing the spaces) are triangles.



PROBLEM:

input: capital letter
outut: diamond patter with letters
- output a dianomd shape with letters as the outline. 
- space between the letters is index value + 1
- spaces to left go down by 1 spaces inside go up by 2

EXAMPLES: 

Diamond for letter 'A':

A


Diamond for letter 'C':

  A
 B B
C   C
 B B
  A

Diamond ofr letter 'E':

    A       # total 5 spaces 4/0  lenght - 1 + chars + length - 1
   B B      # total 6 spaces 3/1
  C   C     # total 7 spaces; 2/3
 D     D    # total 8 spaces 1/5
E       E   # total 9 spaces 7
 D     D
  C   C
   B B
    A

DATA STRUCTURES: 
input single character
output: multiple strings


ALGORITHM:




=end

class Diamond

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    letters = ("A"..letter).to_a + ("A"...letter).to_a.reverse
    max_width = letters.length

    letters.each_with_object([]) do |let, arr|
      arr << create_row(let).center(max_width)
    end.join("\n") + "\n"
  end

  class << self

    private

    def create_row(letter)
      return "A" if letter == "A"
      return "B" if letter == "B B"
      letter + " " * number_spaces(letter) + letter
    end


    def number_spaces(letter)
      spaces = 1

      ("C"..letter).each do |let|
        spaces += 2
      end
      spaces
    end
  end

end


puts Diamond.make_diamond("B")

puts Diamond.make_diamond("E")