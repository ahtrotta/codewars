 def find_next_square(sq)
   (root = Math.sqrt(sq)) != root.to_i ? -1 : (root.to_i + 1)**2
 end

 p find_next_square(121)
 p find_next_square(625)
 p find_next_square(114)
