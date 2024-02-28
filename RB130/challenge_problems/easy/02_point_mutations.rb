=begin
Write a program that can calculate the Hamming distance between two DNA strands.

A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute. In fact, the macro effects of evolution are attributable to the accumulated result of beneficial microscopic mutations over many generations.

The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.

By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

This is called the Hamming distance.

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^

The Hamming distance between these two DNA strands is 7.

The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

PROBLEM:
input: two strings of uppercase letters
output: integer
- output integer is number of letters that do not match at a specific index
- if empty string return 0
- use length of short string if strings are not the same length
- do not change length of original string if it is longer than argued string.

'GGACGGATTCTGACCTGGACTAATTTTGGGG' = index 30 should be last index
'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
 ^ ^^^ ^^ ^^^^^ ^^ ^^^^ ^   ^      
=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comp_strand)
    length =  comp_strand.length <= @strand.length ? length = comp_strand.length - 1 : length = @strand.length - 1
    distance = 0
    0.upto(length) do |index|
      if comp_strand[index] != @strand[index]
        distance += 1
      end
    end
    distance
  end
end 

=begin

class DNA
  def initialize(seq)
    @seq = seq
  end

  def hamming_distance(other_seq)
    short, large = [@seq, other_seq].sort_by(&:size)
    (0...short.size).count { |idx| short[idx] != large[idx] }
  end    
end

=end