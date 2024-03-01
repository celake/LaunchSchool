=begin
verse:
input number
output: two lines of text 

text: " #{number} bottles of beer on the wall, 99 bottles of beer.\n"
"Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"

create proc from verse? 
then call proc
=end

class BeerSong

  def self.verse(num)
    if num > 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n" \
    elsif num == 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n" \
    elsif num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n" \
    else 
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end
  
  def self.verses(start, last)
    output = ''
    start.downto(last) do |num|
      output << BeerSong.verse(num) 
      output << "\n" unless num == last
    end
    output  
  end

  def self.lyrics
    BeerSong.verses(99, 0)
  end
end

