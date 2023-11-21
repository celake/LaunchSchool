# given the array below turn the array into a has where the stirngs are keys and the index is the value

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_flintstones = {}
flintstones.each_with_index do |name, index|
new_flintstones[name] = index
end

p flintstones
p new_flintstones