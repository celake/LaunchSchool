=begin
The Greek mathematician Nicomachus devised a classification scheme for natural numbers (1, 2, 3, ...), identifying each as belonging uniquely to the categories of abundant, perfect, or deficient based on a comparison between the number and the sum of its positive divisors (the numbers that can be evenly divided into the target number with no remainder, excluding the number itself). For instance, the positive divisors of 15 are 1, 3, and 5. This sum is known as the Aliquot sum.

Perfect numbers have an Aliquot sum that is equal to the original number.
Abundant numbers have an Aliquot sum that is greater than the original number.
Deficient numbers have an Aliquot sum that is less than the original number.
Examples:

6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.
28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 and 1 + 2 + 4 + 7 + 14 = 28.
15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.
24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.
Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.
Write a program that can tell whether a number is perfect, abundant, or deficient.

PROBLEM:
input: integer
output: string 'perfect', 'abundant' or 'deficient'
- perfect numbers the sum of all divisors is equal to the number
-abundant numbers the sum of all divisors is more than the number
- deficient numbers: the sum of all divisors is less than the number

EXAMPLES:

6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.
28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 and 1 + 2 + 4 + 7 + 14 = 28.
15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.
24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.
Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.

DATA STRUCTURES
input: integer
output: string

ALGORITHM:
raise StandardError if < 1
- create array `divisors' to hold divisors
iterate argued number fo times 
  if current number is divisor add to divisors
if sum of divisors is equal to argued number return 'perfect'
if sum of `divisors` is less than argued number return 'deficient'
if sum of  `divisors` is more than argued number return 'abundant'

=end

class PerfectNumber

  def self.classify(number)
    raise StandardError if number < 1
    divisors = []
    1.upto(number - 1) do |n|
      divisors << n if number % n == 0
    end
    sum = divisors.sum
    if sum == number 
      return 'perfect'
    elsif sum > number
      return 'abundant'
    else
      return 'deficient'
    end
  end
end

