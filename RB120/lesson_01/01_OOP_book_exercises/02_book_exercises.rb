=begin
Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.

Override the to_s method to create a user friendly print out of your object.

Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way

Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

=end
module ElectricVehicle
  def battery_use_per_mile(miles, battery_use_percentage)
    puts "You are currently using #{battery_use_percentage/miles.to_f}% of your battery every mile"
  end 
end

module IceVehicle
  def mileage(miles, gallons)
    puts "Your mileage is #{miles/gallons} miles per gallon of gas"
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(year, model, color)
    @@number_of_vehicles += 1
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def self.number_of_vehicles
    puts "There are currently #{@@number_of_vehicles} vehicles produced."
  end

  def speed_up(amount)
    @current_speed += amount
    puts "You accelerated by #{amount} mph."
  end

  def brake(amount)
    @current_speed -= amount
    puts "You decelerated by #{amount} mph."
  end

  def turn_off
    @current_speed = 0
    puts "You parked the car"
  end

  def current_speed
    puts "You are now going #{@current_speed}"
  end

  def spray_paint(color)
    @color = color
    puts "You painted you car #{@color}, it looks great!"
  end
  
  def age 
    "Your #{self.model} is #{years_old} years old"
  end
  private

  def years_old
    t = Time.new
    t.year - self.year
  end
end

class MyGasTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include IceVehicle
  def to_s
    "The truck that you're driving is a #{@color} #{@year} #{@make}."
  end
end 

class MyElectricCar < Vehicle

  NUMBER_OF_DOORS = 4

  include ElectricVehicle

  def to_s
    "The car that you're driving is a #{@color} #{@year} #{@make}."
  end
end


lumina = MyElectricCar.new(1997, 'chevy lumina', 'white')
my_truck = MyGasTruck.new(2005, 'Ford F150', 'red')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.turn_off

Vehicle.number_of_vehicles
lumina.color = 'black'
lumina.battery_use_per_mile(59, 10)
my_truck.mileage(50, 2)
lumina.spray_paint('red')

p lumina.age

p MyElectricCar.ancestors