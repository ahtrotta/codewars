def factorial(num)
  return 1 if num < 2
  (2..num).inject(:*)
end

def strong_num(n)
  fact_sum = n.digits.map { |num| factorial(num) }.sum
  n == fact_sum ? 'STRONG!!!!' : 'Not Strong !!' 
end

p strong_num(1) == "STRONG!!!!"
p strong_num(2) == "STRONG!!!!"
p strong_num(7) == "Not Strong !!"
p strong_num(93) == "Not Strong !!"
p strong_num(145) == "STRONG!!!!"
p strong_num(185) == "Not Strong !!"
