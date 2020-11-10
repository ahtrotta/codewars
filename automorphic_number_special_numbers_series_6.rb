def automorphic(n)
  n.digits == (n**2).digits.first(n.digits.size) ? 'Automorphic' : 'Not!!'
end

p automorphic(1) == "Automorphic"
p automorphic(3) == "Not!!"
p automorphic(6) == "Automorphic"
p automorphic(9) == "Not!!"
p automorphic(25) == "Automorphic"
p automorphic(53) == "Not!!"
p automorphic(76) == "Automorphic"
p automorphic(95) == "Not!!"
p automorphic(625) == "Automorphic"
p automorphic(225) == "Not!!"
