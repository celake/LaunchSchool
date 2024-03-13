=begin
Meetups are a great way to meet people who share a common interest. Typically, meetups happen monthly on the same day of the week. For example, a meetup's meeting may be set as:

The first Monday of January 2021
The third Tuesday of December 2020
The teenth Wednesday of December 2020
The last Thursday of January 2021
In this program, we'll construct objects that represent a meetup date. Each object takes a month number (1-12) and a year (e.g., 2021). Your object should be able to determine the exact date of the meeting in the specified month and year. For instance, if you ask for the 2nd Wednesday of May 2021, the object should be able to determine that the meetup for that month will occur on the 12th of May, 2021.

The descriptors that may be given are strings: 'first', 'second', 'third', 'fourth', 'fifth', 'last', and 'teenth'. The case of the strings is not important; that is, 'first' and 'fIrSt' are equivalent. Note that "teenth" is a made up word. There was a meetup whose members realised that there are exactly 7 days that end in '-teenth'. Therefore, it's guaranteed that each day of the week (Monday, Tuesday, ...) will have exactly one date that is the "teenth" of that day in every month. That is, every month has exactly one "teenth" Monday, one "teenth" Tuesday, etc. The fifth day of the month may not happen every month, but some meetup groups like that irregularity.

The days of the week are given by the strings 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'. Again, the case of the strings is not important. 

PROBLEM:
input: year, month, day of the week, monthly indicator. 
output: DATE object with DATE.civil
- need to find the day of the month for the date
- all inputs are case insensitive
- nil is returned if the date does not exist.

EXAMPLES:

DATA STRUCTURES:


ALGORITHM:
- Create constant with days of the week
- create constant with week indicator words and numbers hash
- downcase arguements into local varibles `day_name`, `week`
iterate over days in date until date.day_name? == day name
  set variable `day` to  date.day
return civil date

=end
require 'date'

class Meetup
  DAYS = %w(sunday monday tuesday wednesday thursday friday saturday)
  WEEK = {'first' => (1..7).to_a, 'second' => (8..14).to_a, 
          'third' => (15..21).to_a, 'fourth' => (22..28).to_a, 
          'fifth' => (29..31), 'last' => (-7..-1),
          'teenth' => (13..19).to_a}

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(input_day, input_week)
    day_name = input_day.downcase
    week = input_week.downcase
    day = nil
    last_day = Date.new(@year, @month, -1).day
    WEEK[week].each do |day_number|
      if last_day >= day_number && Date.new(@year, @month, day_number).wday == DAYS.index(day_name) 
        day = day_number
        return Date.civil(@year, @month, day)
      end
    end
    nil
  end

end

meetup = Meetup.new(2015, 11) 
p meetup.day('Thursday', 'fifth')