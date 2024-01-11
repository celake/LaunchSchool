=begin
P: 
input: integer representing year
output: string 
rules: 
  - begins with century number and ends with st, nd, rd, or th.  
  - century runs from 01 to 00

E: 
  -always positive numbers

D: 
integer
array to hold ordinal suffix?
string

A:
remove last two numbers
if 100 or less return 1st.
check if last two numbers are 00 if not increase leading numbers by 1
add ending depending on what last leading digit is. 
=end
def century(year)
  century = year/ 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end 

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'