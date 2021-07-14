=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
km / h * 1000m / 1km * 1h / 60min * 1min / 60s

=end
require 'pry'

G = 9.81 # m/s**2
KM_PER_H_TO_M_PER_S = (1000.0 / 3600)

def max_ball(v0)
  v0 *= KM_PER_H_TO_M_PER_S
  t = 0.0
  h_last = 0
  t_last = 0
  loop do
    h = v0 * t - 0.5 * G * t**2
    return (t_last * 10).round(0) if h_last > h
    h_last = h
    t_last = t
    t += 0.1
  end
end

# test cases

p max_ball(37) == 10
p max_ball(45) == 13
p max_ball(99) == 28
p max_ball(85) == 24
