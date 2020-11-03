def remove_cons_chars(str)
  last = ''

  str.chars.each_with_object('') do |c, result|
    next if c == last
    last = c
    result << c
  end
end

def dup(arr)
  arr.map { |str| remove_cons_chars(str) }
end

p dup(["ccooddddddewwwaaaaarrrrsssss","piccaninny","hubbubbubboo"]) == ['codewars','picaniny','hubububo']
p dup(["abracadabra","allottee","assessee"]) == ['abracadabra','alote','asese']
p dup(["kelless","keenness"]) ==  ['keles','kenes']
p dup(["Woolloomooloo","flooddoorroommoonlighters","chuchchi"]) ==  ['Wolomolo','flodoromonlighters','chuchchi']
p dup(["adanac","soonness","toolless","ppellee"]) ==  ['adanac','sones','toles','pele']
p dup(["callalloo","feelless","heelless"]) == ['calalo','feles','heles']
p dup(["putteellinen","keenness"]) ==  ['putelinen','kenes']
p dup(["kelless","voorraaddoosspullen","achcha"]) == ['keles','voradospulen','achcha']
