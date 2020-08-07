# input
#   - lengths of three sides
#
# output
#   - integer representing triangle type
#     - 0 if no triangle possible
#     - 1 if acute
#     - 2 if right
#     - 3 if obtuse
#
# algorithm
#   - sort the sides of the triangle
#     - initialize variables a, b, c from shortest to longest
#   - return 0 if a + b <= c
#   - return 1 if a**2 + b**2 > c**2 
#   - return 2 if a**2 + b**2 = c**2
#   - return 3 if a**2 + b**2 < c**2

def triangle_type(a, b, c)
  a, b, c = [a, b, c].sort
  a_sq, b_sq, c_sq = a**2, b**2, c**2
  return 0 if (a + b) <= c
  return 1 if (a_sq + b_sq) > c_sq
  return 2 if (a_sq + b_sq) == c_sq
  return 3 if (a_sq + b_sq) < c_sq
end
