require 'pry'

def nb_year(p0, percent, aug, p)
  years = 0
  loop do
    p0 = (p0 + (p0 * (percent / 100.0)) + aug).floor
    years += 1
    return years if p0 >= p
  end
end

p nb_year(1000, 2, 50, 1200)
p nb_year(1500, 5, 100, 5000) == 15
p nb_year(1500000, 2.5, 10000, 2000000) == 10
p nb_year(1500000, 0.25, 1000, 2000000) == 94
