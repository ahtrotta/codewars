class CaesarCipher
  ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  
  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    shifted_chars = string.upcase.chars.map do |char|
      if ALPHABET.include?(char)
        ALPHABET[(ALPHABET.index(char) + @shift) % 26]
      else
        char
      end
    end
    shifted_chars.join
  end
  
  def decode(string)
    shifted_chars = string.upcase.chars.map do |char|
      if ALPHABET.include?(char)
        ALPHABET[(ALPHABET.index(char) - @shift) % 26]
      else
        char
      end
    end
    shifted_chars.join
  end
end

c = CaesarCipher.new(5)

p c.encode('Codewars') == 'HTIJBFWX'
p c.decode('HTIJBFWX') == 'CODEWARS'
p c.encode('WAFFLES') == 'BFKKQJX'
p c.decode('BFKKQJX') == 'WAFFLES'
p c.encode("IT'S A SHIFT CIPHER!!") == "NY'X F XMNKY HNUMJW!!"
p c.decode("NY'X F XMNKY HNUMJW!!") == "IT'S A SHIFT CIPHER!!"
