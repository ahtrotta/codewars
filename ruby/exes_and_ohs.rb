def XO(str)
  str.count('Xx') == str.count('Oo')
end

p XO('xxXoO')
p XO('XxXoOo')
