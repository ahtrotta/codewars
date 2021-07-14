def get_letters(city)
  counts = city.downcase.chars.each_with_object(Hash.new(0)) do |c, h|
    h[c] += 1 if c =~ /[a-z]/
  end

  counts.map { |c, n| "#{c}:#{'*' * n}" }.join(',')
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(get_letters("Chicago"), "c:**,h:*,i:*,a:*,g:*,o:*")
Test.assert_equals(get_letters("Bangkok"), "b:*,a:*,n:*,g:*,k:**,o:*")
Test.assert_equals(get_letters("Las Vegas"), "l:*,a:**,s:**,v:*,e:*,g:*")
