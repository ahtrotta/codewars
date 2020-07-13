=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def decipher_this(string)
  arr = string.split.map do |word|
    first = ''
    rest = word.chars.each_with_object('') do |c, str|
      c.ord > 47 && c.ord < 58 ? first << c : str << c
    end
    rest[0], rest[-1] = rest[-1], rest[0] if rest.length > 1
    first.to_i.chr + rest
  end
  arr.join(' ')
end

# test cases

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
