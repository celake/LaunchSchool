
class Pet
  attr_reader :name
  def initialize(species, name)
    @name = name
    @species = species
  end

  def to_s
    "a #{@species} named #{@name}"
  end
end

class Owner
  attr_reader :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pets(pet)
    @pets << pet
  end

  def number_of_pets
    @pets.length
  end

end

class Shelter
  def initialize
    @owners = {}
  end

  def adopt(owner, animal)
    owner.add_pets(animal.name)
    if @owners[owner.name] != nil
      @owners[owner.name] << [animal]
    else
      @owners[owner.name] = [[animal]]
    end
  end
#interate over hash keys
  # print "#{key} has adopted the following pets:"
  # iterate over pets value array
    
  def print_adoptions
    @owners.each do |key, value|
      puts "#{key} has adopted the following pets:"
      value.each {|pet| puts pet}
    end
  end



end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."



# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.