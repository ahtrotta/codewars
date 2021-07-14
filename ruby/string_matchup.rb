def solve(a, b)
  b.map do |b_str|
    count = 0
    a.each { |a_str| count += 1 if a_str == b_str }
    count
  end
end

p solve(['abc','abc','xyz','abcd','cde'],['abc','cde','uap']) == [2,1,0]
p solve(['abc','xyz','abc', 'xyz','cde'], ['abc','cde','xyz']) == [2,1,2]
p solve(['quick','brown','fox','is','quick'],['quick','abc','fox']) == [2,0,1]
