=begin
Write a method that takes a floating point number that represents a
n angle between 0 and 360 degrees and returns a String that represents 
that angle in degrees, minutes and seconds. You should use a degree symbol 
(°) to represent degrees, a single quote (') to represent minutes, and a 
double quote (") to represent seconds. A degree has 60 minutes, 
while a minute has 60 seconds.

PROBLEM:
Input: float representing an angle between 0 and 360
Output: string representing angle in degrees, minutes and seconds
  - multiple the decimal portion by 60 to get minutes
  - multiply the decimal protion of the minutes by 60 to get seconds

EXAMPLES:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || p dms(360) == %(0°00'00")

DATA STRUCTURES:
Input: float

Output: string

ALGORITHM:
- initialize variable `degrees` to whole number portion of argued float
- initialize variable to the decimal portion of argued float multiplied by 60 with decimal removed
- initialize variable `seconds` to decimal portion of `minutes` 
- concatinate degrees minutes and seconds 
=end
DEGREE = "\xC2\xB0"
def dms(angle)
  degrees= angle.floor
  minutes_with_decimal = degrees == 0 ? 0 : (angle % degrees) * 60
  minutes = minutes_with_decimal
  seconds = minutes == 0 ? 0 : ((minutes_with_decimal % minutes) * 60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
#p dms(360) == %(360°00'00") || p dms(360) == %(0°00'00")