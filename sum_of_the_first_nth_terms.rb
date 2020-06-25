=begin

*** Understand the Problem ***

problem:
return sum of first nth terms of
1 + 1/4 + 1/7 + 1/10 + 1/13 ...

input(s): integer

output(s): float rounded to 2 decimal places converted to string

=============================================================================

*** Examples / Test Cases / Edge Cases ***

provided example(s):

test cases:

edge cases:

'bad' input:

=============================================================================

*** Data Structure(s) ***

data structure(s):


=============================================================================

*** Algorithm ***

algorithm:

1/(1 + (0 * 3)) + 1/(1 + (1 * 3))

=end

def series_sum(n)
  n == 0 ? '0.00' : sprintf("%.2f", (0...n).map { |i| 1.0/(1 + (i * 3)) }.reduce(:+))
end

p series_sum(3)

