=begin
Write some code that converts modern decimal numbers into their Roman number equivalents.

The Romans were a clever bunch. They conquered most of Europe and ruled it for hundreds of years. They invented concrete and straight roads and even bikinis. One thing they never discovered though was the number zero. This made writing and dating extensive histories of their exploits slightly more challenging, but the system of numbers they came up with is still in use today. For example the BBC uses Roman numerals to date their programmes.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. Notice that these letters have lots of straight lines and are hence easy to hack into stone tablets.


 1  => I
10  => X
 7  => VII

There is no need to be able to convert numbers larger than about 3000. (The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero.

To see this in practice, consider the example of 1990. In Roman numerals, 1990 is MCMXC:

1000=M
900=CM
90=XC

2008 is written as MMVIII:

2000=MM
8=VIII

PROBLEM:
input: positive integer up to 3000
output: string
- string is integer converted to roman numerals
- integer will not be above 3000
- no negative integers?
- zero?

I => 1
IV => 4
V => 5
IX => 9
X => 10
XIII => 30
XL => 40
L => 50
XC => 90
C => 100
CD => 400
D => 500
CM => 900
M => 1000

EXAMPLES:
letters for each additional 0:
no 0: base = I, middle = V
one 0: base = X middle = L  
two 0: base = C middle = D
three 0: base = M

rules:
1-3 use base digits * number
4 base digit and middle
5-8 middle and base * (number - 5)
9 base and next level base

1 one I
2 one one
3 one one one
4 one five
5 five
6 five one
7 five one one
8 five one one one
9 one ten
10

49:
40
9

274:
200
70
4

DATASTRUCTURES:
input: integer
output: string
helper hash with letters for each amount of digits {1 => ['I', 'V', 'X'], ...}

ALGORITHM

option probably not:
- `result` variable set to nil
iterate over number until no zeros left
  variable  `leading_digit`, number =  num.divmod(numdigits number)
  - if number is 1- 3 
    letters * leading digit
  else if number is 4
    letters[0] + letters[1]
  -else if number is five 
    letters[digits][1]
  else if number is 6-8


Option 2
- `result` variable set to nil
- create `letters` hash which corrilates letters to digits
- convert number to array of integers
- `digits` = length of array
loop over array elements
  - if number is 1- 3 
  result << letters * leading digit
  else if number is 4
    result << letters[0] + letters[1]
  -else if number is five 
    result << letters[digits][1]
  else if number is 6-8
    etc...
  decrease digits counter
return result

=end

class RomanNumeral
  def initialize(num)
    @num = num
  end

  LETTERS = {1 => ['I', 'V', 'X'], 2 => ['X', 'L', 'C'], 3 => ['C', 'D', 'M'], 4 => ['M']}

  def to_roman
    result = ''
    numbers = @num.to_s.chars.map(&:to_i)
    digits = numbers.length
    numbers.each do |number|
        if (1..3) === number
          result << LETTERS[digits][0]*number
        elsif number == 4
          result << LETTERS[digits][0] + LETTERS[digits][1]
        elsif number == 5
          result << LETTERS[digits][1]
        elsif (6..8) === number
          result << LETTERS[digits][1] + LETTERS[digits][0]*(number -5)
        elsif number == 9
          result << LETTERS[digits][0] << LETTERS[digits][2]
      end
      digits -= 1
    end
    result
  end

end


