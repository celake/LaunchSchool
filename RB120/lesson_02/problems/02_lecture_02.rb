class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_name(full_name)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(full_name)
    parse_name(full_name)
  end

  def same_name?(person2)
    self.name == person2.name
  end

  def to_s
    name
  end

  private

  def parse_name(full_name)
    name_split = full_name.split
    @first_name = name_split.first
    @last_name = name_split.length > 1 ? name_split.last : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"