HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def before_midnight(time)
  total_minutes = (time[0..1].to_i * MINUTES_PER_HOUR) + (time[-2..-1].to_i)
  total_minutes == MINUTES_PER_DAY || total_minutes == 0 ? 0 : MINUTES_PER_DAY - total_minutes
end

def after_midnight(time)
  total_minutes = (time[0..1].to_i * MINUTES_PER_HOUR) + (time[-2..-1].to_i)
  total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0