# iterate through characters of input string
#   return char if count is 1

def first_non_repeating_letter(s)
  s.chars.each_with_object('') { |c| return c if s.downcase.count(c.downcase) == 1 }
end

p first_non_repeating_letter('stress')
p first_non_repeating_letter('sTreSS')
