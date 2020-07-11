=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def productFib(prod)
  fib = [1, 1]
  while fib[0] * fib[1] < prod
    fib[0], fib[1] = fib[1], fib[0] + fib[1]
  end
  fib + [fib[0] * fib[1] == prod]
end

# test cases

p productFib(4895) == [55, 89, true]
p productFib(5895) == [89, 144, false]
