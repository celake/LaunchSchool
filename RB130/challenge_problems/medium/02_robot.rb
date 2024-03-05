=begin
Write a program that manages robot factory settings.

When robots come off the factory floor, they have no name. The first time you boot them up, a random name is generated, such as RX837 or BC811.

Every once in a while, we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it will respond with a new random name.

The names must be random; they should not follow a predictable sequence. Random names means there is a risk of collisions. Your solution should not allow the use of the same name twice.

- create first 

=end


class Robot
  @@names_generated = []
  ALPHA = ("A".."Z").to_a

  def initialize
    @name = nil
  end

  def name
    return @name if @name

    loop do
      @name = ALPHA.sample + ALPHA.sample + rand(100..999).to_s
      break unless @@names_generated.include?(@name)
    end
    
    @@names_generated << @name
    @name
  end

  def reset
    #reset name to nil.
    @@names_generated.delete(@name)
    @name = nil
  end
end

robo = Robot.new
p robo.name