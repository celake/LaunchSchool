=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

PROBLEM:
input: two strings
output: integer
- integer is number of times the second argued string is in the first argued string
- overlap is not permitted
 
ALGORITHM:
- create variable `sub` = '-' * lenght of pattern (second argument)
- create variable `count` = 1
- loop over first argued string
  - if it includes second argued string
    - increment count by 1
    - gsub pattern with '---'
  -else 
    - end loop
- return count
=end

def solution(string, pattern)
  sub = '-'* pattern.length
  count = 0
  loop do 
    if string.index(pattern)
      count += 1
      index = string.index(pattern)
      p string[index..index + pattern.length]
      string[index...index + pattern.length] = sub   
    else
      break
    end
  end
  count
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('abbbbc', 'bb') == 2

