hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []

hsh.each do |_, value|
  if value[:type] == "fruit"
    new_arr << value[:colors]
  else
    new_arr << value[:size].upcase
  end
end

p new_arr


# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]