class Cat
  @@colors = ['tabby', 'black', 'calico', 'orange', 'white']
  def initialize(name)
    @name = name
    @color = @@colors.sample
  end

  def greet
    puts "Hello! My name is #{@name} and I'm a #{@color} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet