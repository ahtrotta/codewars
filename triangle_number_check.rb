CACHE = [0, 1]

def isTriangleNumber(number)
  begin
    Float(number).to_i == number
  rescue StandardError
    return false
  end

  if CACHE.include?(number)
    true
  elsif CACHE.last < number
    CACHE << (CACHE.size + CACHE.last) until CACHE.last >= number
    CACHE.include?(number)
  else
    false
  end
end

p isTriangleNumber(3)
p isTriangleNumber(3.0)
p isTriangleNumber('hello')
p isTriangleNumber(10)
p isTriangleNumber(5)
