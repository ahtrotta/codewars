def gap(num)
  max = num.to_s(2).scan(/(?<=1)0*(?=1)/).max_by(&:length)
  max.nil? ? 0 : max.length
end

p gap(9) == 2
p gap(529) == 4
p gap(20) == 1
p gap(15) == 0
p gap(8) == 0
