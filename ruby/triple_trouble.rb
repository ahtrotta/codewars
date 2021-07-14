def triple_double(num1, num2)
  triples = [] 
  num1.digits.uniq.each do |dig|
    if num1.digits.count(dig) > 2 && num1.to_s.include?(dig.to_s * 3)
      triples << dig 
    end
  end
  return 0 if triples.empty?
  num2.digits.uniq.each do |dig|
    if num2.digits.count(dig) > 1 && num2.to_s.include?(dig.to_s * 2)
      return 1 if triples.include?(dig)
    end
  end
  0
end

p triple_double(451999277, 41177722899) #== 1
p triple_double(1222345, 12345) #== 0
p triple_double(12345, 12345) #== 0
p triple_double(666789, 12345667) #== 1
p triple_double(10560002, 100) #== 1
p triple_double(1112, 122) #== 0
