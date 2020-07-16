=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def nb_dig(n, d)
  (0..n).map { |num| (num**2).to_s }.join.count(d.to_s)
end

# test cases

p nb_dig(5750, 0) == 4700
p nb_dig(11011, 2) == 9481
p nb_dig(12224, 8) == 7733
p nb_dig(11549, 1) == 11905
