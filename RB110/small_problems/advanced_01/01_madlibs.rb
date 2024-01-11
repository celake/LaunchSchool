=begin
Make a madlibs program that reads in some text from a text 
file that you have created, and then plugs in a selection 
of randomized nouns, verbs, adjectives, and adverbs into 
that text and prints it. You can build your lists of nouns, 
verbs, adjectives, and adverbs directly into your program, 
but the text data should come from a file or other external source. 
Your program should read this text, and for each line, it should 
place random words of the appropriate types into the text, and 
print the result.

The challenge of this program isn't about writing your program; 
it's about choosing how to represent your data. Choose the right 
way to structure your data, and this problem becomes a whole lot 
easier. This is why we don't show you what the input data looks 
like; the input representation is your responsibility.


=end
file = File.open('madlibs.txt', 'r')

def mad_lib(text)
  replacements = {'adjective' => ['quick', 'lazy', 'sleepy', 'ugly', 'pretty', 'drowzy', 'mean'], 
                'noun' => ['fox', 'dog', 'head', 'leg', 'cup', 'house', 'car', 'table'], 
                'verb' => ['jumps', 'lifts', 'bites', 'licks', 'sits', 'sings', 'wakes'],
                'adverb' => ['eazily', 'lazily', 'noisily', 'quietly', 'excitedly', 'quickly']}
  text.each_line do |line|
    puts format(line, adjective: replacements['adjective'].sample,
                      noun:      replacements['noun'].sample,
                      verb:      replacements['verb'].sample,
                      adverb:    replacements['adverb'].sample)
  end
end         


mad_lib(file)