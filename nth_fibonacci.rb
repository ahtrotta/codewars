def nth_fibonacci(n)
  return 0 if n == 1
  fib = [0, 1]
  count = 0

  until count >= (n - 2)
    fib = [fib.last, fib.last + fib.first] 
    count += 1
  end

  fib.last
end

class Test
  def self.assert_equals(obj1, obj2, msg)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(nth_fibonacci(1),0,"1-st Fibo")
Test.assert_equals(nth_fibonacci(2),1,"2-nd Fibo")
Test.assert_equals(nth_fibonacci(3),1,"3-rd Fibo")
Test.assert_equals(nth_fibonacci(4),2,"4-th Fibo")
Test.assert_equals(nth_fibonacci(5),3,"5-th Fibo")
Test.assert_equals(nth_fibonacci(6),5,"6-th Fibo")
Test.assert_equals(nth_fibonacci(7),8,"7-th Fibo")
Test.assert_equals(nth_fibonacci(8),13,"8-th Fibo")
