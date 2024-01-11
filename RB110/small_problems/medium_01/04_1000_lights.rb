=begin
You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially 
off. You walk down the row of switches and toggle every one of 
them. You go back to the beginning, and on this second pass, 
you toggle switches 2, 4, 6, and so on. On the third pass, 
you go back again to the beginning and toggle switches 3, 6, 9, 
and so on. You repeat this process and keep going until you have 
been through n repetitions.

Write a method that takes one argument, the total number of switches, 
and returns an Array that identifies which lights are on 
after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

PROBLEM:
input: integer represents number of lights `n`
output: array where elements are positions of lights on
- initially all lights are off
- there will be `n` number of passes over lights
- first pass n = 1 all lights are on
- second pass n = 2 starting at n every other light is toggled 
- thrid pass n = 3 start at third light and toggle every other light
- once `n` passes have been made, return number of lights on

EXAMPLES:
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

DATA STRUCTURES:
input: integer
output: integer
assistant: array with values '0' and '1'

ALGORITHM:
- create array 'lights' with `n` values all set to '1' (pass 1 has already happened)
- create variable `pass` set to 2
- loop n-1 times
  -iterate over `lights`
    - start at index pass and toggle every other light
  - increment `pass`
- select positions for lights that are on
=end

def lights_on(number)
  lights = ["1"]*number
  pass = 2
  loop do
    current_switch = pass - 1
    loop do
      lights[current_switch] == "0" ? lights[current_switch] = "1" : lights[current_switch] = "0"
      current_switch += pass
      break if current_switch >= lights.length
    end
    pass += 1
    break if pass == lights.length + 1
  end
  lights_on = []
  lights.each_with_index {|value, index| lights_on << index + 1 if value == '1'}
  lights_on
end


p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]

