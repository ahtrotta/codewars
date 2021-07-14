#def fibonacci(n, cache = {})
#  return n if (0..1).include?(n)
#  fib_n_less_2 = nil
#  fib_n_less_1 = nil
#
#  if cache.has_key?(n - 2) && cache.has_key?(n - 1)
#    return cache[n - 2] + cache[n - 1]
#  elsif cache.has_key?(n - 2)
#    fib_n_less_2 = cache[n - 2]
#    fib_n_less_1 = fibonacci(n - 1, cache)
#    cache[n - 1] = fib_n_less_1
#  elsif cache.has_key?(n - 1)
#    fib_n_less_1 = cache[n - 1]
#    fib_n_less_2 = fibonacci(n - 2, cache)
#    cache[n - 2] = fib_n_less_2
#  else
#    fib_n_less_2 = fibonacci(n - 2, cache)
#    cache[n - 2] = fib_n_less_2
#    fib_n_less_1 = fibonacci(n - 1, cache)
#    cache[n - 1] = fib_n_less_1
#  end
#
#  fib_n_less_2 + fib_n_less_1
#end

#def fibonacci(n, cache = {})
#  return n if (0..1).include?(n)
#  fib_n_less_2 = cache[n - 2]
#  fib_n_less_1 = cache[n - 1]
#
#  if fib_n_less_2 && !fib_n_less_1
#    fib_n_less_1 = fibonacci(n - 1, cache)
#    cache[n - 1] = fib_n_less_1
#  elsif !fib_n_less_2 && fib_n_less_1
#    fib_n_less_2 = fibonacci(n - 2, cache)
#    cache[n - 2] = fib_n_less_2
#  elsif !fib_n_less_2 && !fib_n_less_1
#    fib_n_less_2 = fibonacci(n - 2, cache)
#    cache[n - 2] = fib_n_less_2
#    fib_n_less_1 = fibonacci(n - 1, cache)
#    cache[n - 1] = fib_n_less_1
#  end
#
#  fib_n_less_2 + fib_n_less_1
#end

CACHE = {0 => 0, 1 => 1}

def fibonacci(n)
  fib = CACHE[n]
  return fib if fib

  fib = fibonacci(n - 2) + fibonacci(n - 1)
  CACHE[n] = fib

  fib
end

p fibonacci(50)
