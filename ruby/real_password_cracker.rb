#def password_cracker(hash)
#  (1..5).each do |n|
#    counter = 0
#
#    loop do
#      pword_str = sprintf("%#{n}s", counter.to_s(26)).gsub(' ', '0')
#      pword = pword_str.chars.map { |c| ALPHABET[c.to_i(26)] }.join
#      hsh = Digest::SHA1.hexdigest(pword)
#      return pword if hsh == hash
#      break if pword == 'z' * n
#      counter += 1
#    end
#  end
#end

require 'digest'

class Password
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  def initialize(size)
    @size = size
    @array = [0] * size
  end

  def increment
    if @array.last < 25
      @array[-1] += 1
    else
      num = @array.reverse.map.with_index { |n, i| n * 26**i }.sum
      num_str = sprintf("%#{@size}s", (num + 1).to_s(26)).gsub(' ', '0')
      @array = num_str.chars.map { |c| c.to_i(26) }
    end
  end

  def get
    @array.map { |i| ALPHABET[i] }.join
  end
end

def password_cracker(hash)
  (1..5).each do |n|
    p = Password.new(n)
    last_pword = 'z' * n

    loop do
      pword = p.get
      hsh = Digest::SHA1.hexdigest(pword)
      return pword if hsh == hash
      break if pword == last_pword
      p.increment
    end
  end
end

class Test
  def self.assert_equals(obj1, obj2)
    result = (obj1 == obj2)
    p result
    result
  end
end

Test.assert_equals(password_cracker('e6fb06210fafc02fd7479ddbed2d042cc3a5155e'), 'code')
Test.assert_equals(password_cracker('a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'), 'test')
