def staggered_case(string)
  swapped = ""
  counter = 0
  letters = ('A'..'Z').to_a + ('a'..'z').to_a
  string.each_char do |char|
    if counter % 2 == 0 && letters.include?(char)
      swapped << char.upcase
      counter += 1
    elsif counter % 2 == 1 && letters.include?(char)
      swapped << char.downcase
      counter += 1
    else
      swapped << char
    end
  end
  swapped
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
