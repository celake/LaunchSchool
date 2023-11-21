hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w( a e i o u)
hsh.each_value do |value|
  value.each do |string|
    string.each_char do |char|
      if vowels.include?(char)
        puts char
      end
    end
  end
end