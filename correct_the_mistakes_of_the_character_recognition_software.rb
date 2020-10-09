def correct(string)
  string.split('').map do |char|
    case char
    when '5'  then 'S'
    when '0'  then 'O'
    when '1'  then 'I'
    else      char
    end
  end.join
end

p correct('L0ND0N')
