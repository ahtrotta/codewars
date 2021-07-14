# get fibonacci sequence and multiply by 4

def perimeter(n)
  fib = [1, 1]
  fib << fib[-1] + fib[-2] until fib.length == n + 1
  fib.sum * 4
end

p perimeter(5)
p perimeter(7)
p perimeter(20)
