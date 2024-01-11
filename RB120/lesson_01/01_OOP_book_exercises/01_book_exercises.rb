# The Object Model
# Creating an object in Ruby
module Noise
  def noise(sound)
    puts sound
  end
end

class Animal.new
  include noise
end

cow = Animal.new

cow.noise('moo')

#what is a module?  Add one to the above code
# A collection of behaviors/actions that can be used in multiple classes
# to be used in a class it must be added to the class with the #include method 
# the adding of the module is called a mixin