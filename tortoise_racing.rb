=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- v1 * h + g = v2 * h
- (v2 * h) - (v1 * h) = g
- h = g / (v2 - v1)

=end

def race(v1, v2, g)
  return nil if v1 >= v2
  hrs = g.to_f / (v2 - v1)
  hrs, mins = hrs.divmod(1)
  mins, secs = (mins * 60).divmod(1)
  secs, rem = (secs * 60).divmod(1)
  secs += 1 if rem.round(0) == 1
  if secs == 60
    mins += 1
    secs = 0
  end
  if mins == 60
    hrs += 1
    mins = 0
  end
  [hrs, mins, secs]
end

# test cases

p race(720, 850, 70) == [0, 32, 18]
p race(80, 91, 37) == [3, 21, 49]
p race(80, 100, 40) == [2, 0, 0]
