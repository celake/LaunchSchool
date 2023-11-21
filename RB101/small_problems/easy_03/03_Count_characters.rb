def prompt(message)
  puts "=> #{message}"
end

def number_characters(word)
  total = 0
  word.chars.each {|char| total +=1 unless char == " "}
  total
end

prompt("Please write word or multiple words: ")
words = gets.chomp
prompt("There are #{number_characters(words)} characters in \"#{words}\"")


