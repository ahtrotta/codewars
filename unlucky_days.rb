require 'date'

def unlucky_days(year)
  (1..12).select { |m| Date.new(year, m, 13).friday? }.size
end

p unlucky_days(2819) == 2
p unlucky_days(2792) == 2
p unlucky_days(2723) == 2
p unlucky_days(1909) == 1
p unlucky_days(1812) == 2
p unlucky_days(1618) == 2
p unlucky_days(2132) == 1
p unlucky_days(2065) == 3
