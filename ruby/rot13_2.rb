ROTATION = 13

def rot13(message)
  message.split('').each_with_object('') do |c, str|
    if ('a'..'z').include?(c)
      str << ((((c.ord - 97) + ROTATION) % 26) + 97).chr
    elsif ('A'..'Z').include?(c)
      str << ((((c.ord - 65) + ROTATION) % 26) + 65).chr
    else
      str << c
    end
  end
end

p rot13('EBG13 rknzcyr.')
