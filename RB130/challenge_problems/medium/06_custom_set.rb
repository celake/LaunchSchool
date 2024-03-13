=begin
Sometimes it is necessary to define a custom data structure of some type, like a set. In this exercise you will define your own set type. How it works internally doesn't matter, as long as it behaves like a set of unique elements that can be manipulated in several well defined ways.

In some languages, including Ruby and JavaScript, there is a built-in Set type. For this problem, you're expected to implement your own custom set type. Once you've reached a solution, feel free to play around with using the built-in implementation of Set.

For simplicity, you may assume that all elements of a set must be numbers.

####
#subset
- input two arays
-output boolean
- true if calling array is subset of argued array. 
- subset is greater than 1 element
- subsets have the same order and are contiguous in both arrays

Data structures:
- arrays
-boolean
- array of subarrays of given length. 

ALGORITHM:
- create array of subarrays of length of calling object
- iterate over argued array, if and compare the two arrays
  return true if there is a match
- return false


=end

class CustomSet
  attr_reader :set

  def initialize(set=[])
    @set = set.uniq
  end

  def empty?
    @set == []
  end

  def contains?(num)
    @set.include?(num)
  end

  def subset?(subset)
    
    return false if !@set.empty? && subset.empty?
    return true if subset.empty? || @set.empty?

    length = @set.length
    subset.set.each_cons(length) do |sub|
      return true if sub == @set
    end
    false
  end

  def disjoint?(other)
    return true if other.empty? || self.empty?
    if  other.set.length > @set.length 
      longer_set, smaller_set = other.set , @set
    else
      longer_set, smaller_set =  @set, other.set
    end
    return false if longer_set.any? {|elem| smaller_set.include?(elem)}
    true
  end

  def eql?(other)
    set = @set.sort.uniq
    other_set = other.set.sort.uniq
    set == other_set
  end

  def add(num)
    @set << num
    @set.uniq!
    self
  end

  def intersection(other)
    @set = @set.select { |element| other.set.include?(element) }
    self
  end

  def difference(other)
    return self if @set.length == 0
    if  other.set.length > @set.length 
      longer_set, smaller_set = other.set , @set
    else
      longer_set, smaller_set =  @set, other.set
    end
    @set = longer_set.select {|num| !smaller_set.include?(num)}
    self
  end

  def union(other)
    @set = @set.union(other.set).sort
    self
  end

  def ==(other)
    if other.is_a?(Array)
      @set == other
    else
     @set == other.set
    end
  end


  protected
 
  def each_cons(array)
    @set.each_cons(array)
  end

end
