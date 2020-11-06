ALPHABET = ('a'..'z').to_a

def solve(s, k)
  count = 0
  new_str = s
  i = 0

  until count == k
    loop do
      char = ALPHABET[i]
      return '' if char.nil?
      current = new_str.sub(char, '')

      if current == new_str
        i += 1
      elsif current.nil?
        return ''
      else
        new_str = current
        break
      end
      
    end

    count += 1
  end

  new_str
end

p solve('abracadabra', 1) == 'bracadabra'
p solve('abracadabra', 2) == 'brcadabra'
p solve('abracadabra', 6) == 'rcdbr'
p solve('abracadabra', 8) == 'rdr'
p solve('abracadabra', 50) == ''
