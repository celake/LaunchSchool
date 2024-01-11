=begin
  count the lowercase letters in a string and return a hash with 'letter' symbol as key and count as value. 

PROBLEM:
input: stirng
output: hash
- count only lowercase characters
- key is symbol not letter

EXAMPLES:

DATA STRUCTURES:
input: string
output: hash

ALGORITHM
- convert argued string to array of characters `chars`
- create new hash initialize value to 0 `result`
- iterate over `chars`
  - check if it is lowercase
    - if so increment value by one in hash
=end

def letter_count(string)
  chars = string.chars
  result = Hash.new(0)
  chars.each do |char|
    if char == char.downcase
      result[char.to_sym] += 1
    end
  end
  result
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('ariBthmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}