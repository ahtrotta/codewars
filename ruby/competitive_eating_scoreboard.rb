# algorithm
#   - map input array
#     - keep name the same
#     - add values for each food item together and put under score
#   - sort_by
#     - use <=> on score
#       - if 0 then sort by name value

POINTS = { 'chickenwings' => 5, 'hamburgers' => 3, 'hotdogs' => 2 }

#def scoreboard(who_ate_what)
#  scores = who_ate_what.map do |hsh|
#    score = 0
#    new_hsh = {}
#    hsh.each do |key, value|
#      if key == :name
#        new_hsh[:name] = value
#      else
#        score += value * POINTS[key]
#      end
#    end
#    new_hsh[:score] = score
#    new_hsh
#  end
#
#  scores.sort do |hsh_a, hsh_b|
#    val = hsh_b[:score] <=> hsh_a[:score]
#    val == 0 ? hsh_a[:name] <=> hsh_b[:name] : val
#  end
#end

def scoreboard(who_ate_what)
  score_hsh = who_ate_what.map do |hsh|
    { 
      'name' => hsh['name'], 
      'score' => POINTS.map { |k, v| hsh[k] ? hsh[k] * v : 0 }.sum
    }
  end

  score_hsh.sort do |hsh_a, hsh_b|
    val = hsh_b['score'] <=> hsh_a['score']
    val == 0 ? hsh_a['name'] <=> hsh_b['name'] : val
  end
end

who_ate_what = [
  { name: 'Habanero Hillary', chickenwings: 5, hamburgers: 17, hotdogs: 11 },
  { name: 'Big Bill', chickenwings: 20, hamburgers: 4, hotdogs: 11 }
]

p scoreboard(who_ate_what)
