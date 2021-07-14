SYMBOLS = [[1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'],
           [90, 'XC'], [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'],
           [5, 'V'], [4, 'IV'], [1, 'I']]

def solution(number)
  SYMBOLS.each_with_object('') do |(num, sym), str|
    multiplier, number = number.divmod(num)
    str << sym * multiplier
  end
end

p solution(1) == 'I'
p solution(4) == 'IV'
p solution(6) == 'VI'
p solution(14) == 'XIV'
p solution(21) == 'XXI'
p solution(89) == 'LXXXIX'
p solution(91) == 'XCI'
p solution(984) == 'CMLXXXIV'
p solution(1000) == 'M'
p solution(1889) == 'MDCCCLXXXIX'
p solution(1989) == 'MCMLXXXIX'
