def remove(s)
  s.gsub(/(?=!+( |\z))!+/, '')
end

p remove("Hi!") == "Hi"
p remove("Hi!!!") =="Hi"
p remove("!Hi") == "!Hi"
p remove("!Hi!") == "!Hi"
p remove("Hi! Hi!") == "Hi Hi"
p remove("!!!Hi !!hi!!! !hi") == "!!!Hi !!hi !hi"
