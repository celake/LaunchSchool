=begin
The time of day can be represented as the number of m before or after midnight. 
If the number of m is positive, the time is after midnight. 
If the number of m is negative, the time is before midnight.

Write a method that takes a time using this minute-based 
format and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's Date and Time classes.

P: 
input: positive or negative integer
output: time in 24hour format
rules:
  - positive numbers are number of m after midnight
  - negative numbers are number of m before midnight
  - not allowed to use Date and Time class

E:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

D:
- integer input
- string output

A:
-create helper function to normalize input minutes
  -
- create method that takes normalized data as input
  - set variables `hour` and `minutes` using #divmod
  -create string h : m with formatting for leading 0s

=end
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
def normalized_minutes(minutes)
  minutes % MINUTES_PER_DAY
end

def time_of_day(mins)
  delta_minutes = normalized_minutes(mins)
  h, m = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', h , m)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"