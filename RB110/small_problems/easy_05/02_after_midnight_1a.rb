=begin
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

Problem:
-input: integer
-output: string
- output string in format hh:mm for time of day 
- using 24 hour clock for hh
- there are 1439 seconds in a day

EXAMPLES:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

DATA STRUCTURES:
input: integer
output: string
constants: seconds in hour

ALGORITHM:
- Constants MINUTES_PER_HOUR
- normalize seconds to all positive less than 1439
  - if argued integer less than 0
    - add 1439 until it is positive
  - if argued integer greater than 1439 
   - subtract 1439 until 0 < number < 1439
- capute hours and mintes by calling `divmod` on argued integer with MINUTES_PER_HOUR as argument
- format and return string of hours and minutes "hh:mm"

=end

MINUTES_PER_HOUR = 60
def time_of_day(minutes)
  if minutes < 0
    while minutes < 0
      minutes += 1440
    end
  elsif minutes > 1440
    while minutes > 1440
      minutes -= 1440
    end
  end
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
