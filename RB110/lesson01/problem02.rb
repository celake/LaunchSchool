ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum_of_ages = 0
ages.each do |key, value|
  sum_of_ages += value
end

p sum_of_ages