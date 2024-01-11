=begin
Write a method that determines the mean (average) 
of the three scores passed to it, and returns 
the letter value associated with that grade.

PROBLEM:
input: three numbers
output: string
- average the three scores
- score is an integer
- always only three integers
- assign the average to a letter grade:

90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

EXAMPLES:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

DATA STRUCTURES:
input: three integers
output: string

ALGORITHM:
- create varaible `average`
- `average` is sum of all argued integers divided by 3
- check `average` for which grade bracket it is in
- return letter grade 

=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  case average
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
else                'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

