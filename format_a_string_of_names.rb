def list(names)
  names = names.map { |hsh| hsh.values.first }
  case names.size
  when 0
    ''
  when 1
    names.first
  when 2
    names.first + ' & ' + names.last
  else
    last = names.pop
    names.join(', ') + ' & ' + last
  end
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
p list([ {name: 'Bart'}, {name: 'Lisa'} ])
p list([ {name: 'Bart'} ])
