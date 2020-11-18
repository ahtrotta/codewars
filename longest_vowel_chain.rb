def solve(s)
  count = 0
  max = 0

  s.each_char do |c|
    if 'aeiou'.include?(c)
      count += 1
      max = count if count > max
    else
      count = 0
    end
  end

  max
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
