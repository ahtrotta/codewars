def isPrime(num)
  return false if num < 2
  
  limit = num / 2
  checked = []
  div = 2
  
  loop do
    break if div == limit
    return false if num % div == 0
    
    multiples = div
    multiplier = 2
    until multiples > (num / multiples)
      checked << multiples
      multiples = multiples * multiplier
      multiplier += 1
    end
      
    div += 1 until !(checked.include?(div))
  end
  
  true
end

p isPrime(1)
p isPrime(2)
p isPrime(-1)
p isPrime(457)
