def int32_to_ip(int32)
  format("%032b", int32).scan(/.{8}/).map { |str| str.to_i(2) }.join('.')
end

p int32_to_ip(2154959208) == '128.114.17.104'
p int32_to_ip(0)
