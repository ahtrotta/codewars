def maskify(cc)
  cc.length < 5 ? cc : cc[0..-5].chars.map{ |_| '#' }.join + cc[-4..-1]
end

p maskify('4556364607935616') == '############5616'
p maskify('1') == '1'
p maskify('11111') == '#1111'
