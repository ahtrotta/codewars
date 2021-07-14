# problem
# - convert a simple fraction to a mixed number
#
# input
# - string representing simple fraction
#
# output
# - string representing mixed number '[sign]a b/c'
#
# algorithm
# - split input string on '/'
# - divide and get remainder (divmod)
# - get greatest common divisor of remainder and denominator
# - assemble string

def mixed_fraction(s)
  num, den = s.split('/').map(&:to_i)
  
  raise ZeroDivisionError if den.to_i == 0
  return '0' if num.to_i == 0
  neg = (num < 0 && den > 0) || (num > 0 && den < 0)
  
  n, rem = num.abs.divmod(den.abs)
  gcd = rem.gcd(den)
  
  n = (n.to_i > 0 ? n : nil)
  frac = (rem > 0 ? "#{rem / gcd}/#{den.abs / gcd}" : nil)
  
  neg ? "#{n} #{frac}".strip.prepend('-') : "#{n} #{frac}".strip
end

p mixed_fraction('42/9')
p mixed_fraction('4/-6')
