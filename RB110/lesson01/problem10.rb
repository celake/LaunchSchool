munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |key, value|
  if value['age'] > 64
    value['age group'] = "senior"
  elsif value['age'] > 17 
    value['age group'] = "adult"
  else
    value['age group'] = "kid"
  end
end
p munsters