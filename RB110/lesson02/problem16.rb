


def uuid_creator
  characters = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'a', 'b', 'c', 'd', 'e',  'f']
  uuid = ''
  8.times do
    uuid << characters.sample 
  end
  uuid << '-'
  3.times do
    4.times do
      uuid << characters.sample
    end 
    uuid << '-'
  end
  12.times do
    uuid << characters.sample
  end
  uuid
end

p uuid_creator