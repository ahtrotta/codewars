def solve(s)
  rev = s.split.join.reverse
  sum = 0

  slices = s.split.map do |w|
             r = sum...(w.length + sum)
             sum += w.length
             rev[r]
           end

  s[-1] == ' ' ? slices.join(' ') + ' ' : slices.join(' ')
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(solve("codewars"),"srawedoc")
Test.assert_equals(solve("your code"),"edoc ruoy")
Test.assert_equals(solve("your code rocks"),"skco redo cruoy")
Test.assert_equals(solve("i love codewars"),"s rawe docevoli")
