ONE_LETT_SYMS = [[1000, 'M'], [500, 'D'], [100, 'C'], 
                 [50, 'L'], [10, 'X'], [5, 'V'], [1, 'I']]

TWO_LETT_SYMS = [[900, 'CM'], [400, 'CD'], [90, 'XC'],
                 [40, 'XL'], [9, 'IX'], [4, 'IV']]

def solution(roman)
  sum = 0

  TWO_LETT_SYMS.each { |num, sym| sum += num if roman.gsub!(sym, '') }

  ONE_LETT_SYMS.each do |num, sym|
    count = roman.count(sym)
    sum += num * count
  end

  sum
end

p solution('XXI')
p solution('MDCLXVI')
