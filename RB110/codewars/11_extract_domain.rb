=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

PROBLEM: 
input: string
output: string - domain name only
string after // or www. and before . (either first or second)

DATA STRUCTURES:
input: string
output:string

ALGORITHM:
option #1:
  - find index of second `/` or first `.`  interate each with index return second slash index  or the first '.'  
    - iterate over characters 
      `back_slash` = index of first slash +1
      `www' = index of `.` after www
      `end_index` = next '.'
  -  if www exisits
    - first index = `www``
  - slice the string based on indices 
=end


def domain_name(string)
  slash_start = string.index('/') + 2
  www_start = string.index('.') + 1
  end_index = ''
  

  slash
end


# p domain_name("http://google.com") == "google"
# p domain_name("http://google.co.jp") == "google"
# p domain_name("www.xakep.ru") == "xakep"
# p domain_name("https://youtube.com") == "youtube"
# p domain_name("http://github.com/carbonfive/raygun") == "github" 
# p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") #== "cnet"
