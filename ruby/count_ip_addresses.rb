WEIGHTS = 3.downto(0).map { |p| 256**p }

def ipsBetween(start, ending)
  start, ending = start.split('.').map(&:to_i), ending.split('.').map(&:to_i) 
  (0..3).map { |i| ending[i] * WEIGHTS[i] - start[i] * WEIGHTS[i] }.sum
end

p ipsBetween('10.0.0.0', '10.0.0.50')
p ipsBetween('20.0.0.10', '20.0.1.0')
