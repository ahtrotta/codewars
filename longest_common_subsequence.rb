# problem
#   - find longest common subsequence between two input strings
#     - subsequence doesn't have to be sequential
#
# algorithm
#   - initialize short to shorter length string
#   - initialize long to longer length string
#   - from length of short string down to 1
#     - get combinations of both strings of length of current value
#     - iterate through combinations of short string
#       - return combination if both strings have it

def lcs(x, y)
  short, long = [x, y].sort_by(&:length)

  (short.length).downto(1).each do |size|
    short_subseqs = short.chars.combination(size).to_a

    long.chars.combination(size).each do |long_subseq|
      return long_subseq.join if short_subseqs.include?(long_subseq)
    end

  end
  ''
end

p lcs('abcdef', 'abc')
