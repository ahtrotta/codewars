def solution(n)
  n.digits.each_slice(3).map(&:reverse).reverse.map(&:join).join(',')
end

p solution(35235235)
