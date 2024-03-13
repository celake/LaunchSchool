=begin

Create a clock that is independent of date.

You should be able to add minutes to and subtract minutes from the time represented by a given Clock object. Note that you should not mutate Clock objects when adding and subtracting minutes -- create a new Clock object.

Two clock objects that represent the same time should be equal to each other.

You may not use any built-in date or time functionality; just use arithmetic operations.

AT METHOD:
- `#at` method 'class method?'
  - can take two integers if 
    - first integer is hour
    - second integer is minutes
    - if no second integer then it is exactly on the hour
    - this sets the time

input: on or two itegers
output: hour and minutes 

ALGORITHM: 
- create HOURS array 0..23
- hour and minutes are two parameters
- check that hour is 0-23
- save into class varialbe @@ hours
- convert minutes to 0-59 and add extra to hours. 
- save minutes to class variable `@@minutes`

Convert Minutes ALGORITHM

    
- `#==` method for compairing 
- `#+` method 
- `#-` method


- `#to_s` method that returns the current time  
ALGORITHM:
- string interpolation of hours and minutes to HH:MM



=end


class Clock
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = 1440

  def initialize(hour, minutes)
    @hour = hour
    @minutes = minutes
    convert_minutes
  end

  def self.at(hour, minutes=0)
    Clock.new(hour, minutes)
  end
  
  def +(num)
    @minutes += num
    convert_minutes
    Clock.new(@hour, @minutes)
  end

  def -(num)
    total_minutes = @hour * MINUTES_PER_HOUR + @minutes  - num

    while total_minutes < 0
      total_minutes += MINUTES_PER_DAY
    end

    hour, minutes = total_minutes.divmod(MINUTES_PER_HOUR)
    Clock.new(hour, minutes)
  end

  def ==(other)
      self.to_s == other.to_s
  end

  def to_s
    "#{@hour < 10 ? "0" + @hour.to_s : @hour}:#{@minutes < 10 ? "0" + @minutes.to_s : @minutes}"
  end

  private

  
  def convert_minutes
    hours, @minutes = @minutes.divmod(MINUTES_PER_HOUR)
    @hour += hours
    @hour = @hour % 24 if @hour > 23
  end
end


clock = Clock.at(10) - 90
p  clock



# p Clock.hour
# p Clock.minutes