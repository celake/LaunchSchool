require 'date'
=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument. 
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern 
Gregorian Calendar) and that it will remain in use for the foreseeable future.

PROBLEM: 
- input: four digit integer representing year
- output: integer equal to number of friday the 13ths in given year
- year will be greater than 1752 

EXAMPLES:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

DATA STRUCTURES:
input: year
output: integer

ALGORITHM:
- create `counter` variable set to 0
- create 'date' string 
- loop 12 times
  -check 13th of each month if it is a friday
    if yes add 1 to counter
  - increment month
return counter



def friday_13th(year)
  count = 0
  1.upto(12) do |n|
    d = Date.new(year, n, 13)
    count += 1 if d.friday? 
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


- create a hash to keep `counts`
- array of `days`
- check if year is leap year
  - if yes adjust `days` index 1 to 29
-loop over each month
  - find first friday in month
  -loop over each friday in month
      -add to current month count
      - increment date by 7 
      - break if date is greater than days in month
-iterate over `counts` values
  select if equal to 5
- return lenght of array from selections
=end


def five_fridays(year)
  months = Hash.new(1)
  days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days[1] = 29 if Date.new(year).leap?
  count = 0
  1.upto(12) do |month|
    fridays = (1..days[month - 1]).to_a.select { |day| Date.new(year, month, day).friday? }
    count += 1 if fridays.length == 5
  end
  count
end

p five_fridays(2027)