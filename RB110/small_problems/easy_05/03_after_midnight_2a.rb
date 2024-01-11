=begin
  As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

PROBLEM:
input: string in format HH:MM
output: integer
  - output is number of minutes before or after midnight
  - 0 and 24:00 return 0

EXAMPLES: 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

DATA STRUCUTRES:
input: string
output: integer
constant: minutes per hour

ALGORITHM:
- create constant for minutes in an hour
- separate minutes and hours to variables `minutes` and `hours`
- convert minutes and ours to integers
- multiply hours by constant `MINUTES_PER_HOUR` put in variable `total_minutes`
- add minutes to `total_minutes`
(for p before_midnight subtract `total_minutes` from 1440)
=end
MINUTES_PER_HOUR = 60

def after_midnight(time)
  if time == '00:00' || time == '24:00'
    return 0
  end
  time = time.split(':')
  hours = time[0].to_i 
  minutes = time[1].to_i
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
end

def before_midnight(time)
  if time == '00:00' || time == '24:00'
    return 0
  end
  time = time.split(':')
  hours = time[0].to_i 
  minutes = time[1].to_i
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
  1440 - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0