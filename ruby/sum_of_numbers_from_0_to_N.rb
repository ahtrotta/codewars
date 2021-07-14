class SequenceSum
  def self.show_sequence(n)
    return '0=0' if n == 0
    return "#{n}<0" if n < 0
    arr = 0.upto(n).to_a
    arr.join('+') + ' = ' + arr.sum.to_s
  end
end

p SequenceSum.show_sequence(6)
