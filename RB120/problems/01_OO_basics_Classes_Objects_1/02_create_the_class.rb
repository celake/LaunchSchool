module Walkable
  def walk
    puts "Let's go for a walk"
  end
end

class Cat 
  include Walkable
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hello! My name is #{self.name}."
  end
end

kitty = Cat.new('Sadie')
kitty.greeting
kitty.name = "Luna"
kitty.greeting
kitty.walk