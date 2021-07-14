def parse(data)
  data = data.delete('^idso')
  value = 0

  data.each_char.with_object([]) do |c, arr|
    case c
    when 'i'    then value += 1
    when 'd'    then value -= 1
    when 's'    then value = value**2
    when 'o'    then arr << value
    end
  end
end
