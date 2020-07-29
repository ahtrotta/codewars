# input
#   - string
#   - integer (shift number)
#
# output
#   - modified string
#
# algorithm
#   - shift each alphabetic character by the shift number (use modulo)
#   - replace each digit by 9 - itself
#   - downcase each letter in odd index and upcase in even index
#   - reverse result

def lwrcase_shift(c, n)
  ((((c.ord - 97) + n) % 26) + 97).chr
end

def play_pass(str, n)
  output = ''
  str.chars.each_with_index do |c, i|
    if ('a'..'z').include?(c.downcase)
      c = lwrcase_shift(c.downcase, n)
      c = (i.odd? ? c : c.upcase)
    elsif ('0'..'9').include?(c)
      c = (9 - c.to_i).to_s
    end
    output << c
  end
  output.reverse
end

p play_pass('BORN IN 2015!', 1)
