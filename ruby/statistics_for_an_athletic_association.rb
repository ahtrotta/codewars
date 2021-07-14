=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

MINS_PER_HOUR = 60
SECS_PER_MIN = 60

def secs_to_s(secs)
  mins, secs = secs.divmod(SECS_PER_MIN)
  hrs, mins = mins.divmod(MINS_PER_HOUR)
  format('%02i|%02i|%02i', hrs, mins, secs)
end

def stat(strg)
  secs = strg.split(', ').map do |time|
    h, m, s = time.split('|').map(&:to_i)
    (h * MINS_PER_HOUR * SECS_PER_MIN) + (m * SECS_PER_MIN) + s
  end

  secs = secs.sort
  range = secs.last - secs.first
  mean = secs.inject(:+) / secs.size.to_f
  median = if secs.size.odd?
             secs[(secs.size / 2)]
           else
             secs[(secs.size / 2) - 1, 2].sum / 2.0
           end

  "Range: #{secs_to_s(range)} Average: #{secs_to_s(mean)} " \
  "Median: #{secs_to_s(median)}"
end

# test cases

p stat("01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17") == "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34"
p stat("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41") == "Range: 00|31|17 Average: 02|26|18 Median: 02|22|00"
