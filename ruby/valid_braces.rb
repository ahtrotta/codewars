def validBraces(braces)
  loop do
    output = [ braces.gsub!('()', ''),
               braces.gsub!('{}', ''),
               braces.gsub!('[]', '') ]
    break if output.all?(nil)
  end
  braces.empty?
end

p validBraces('(){}[]')
p validBraces('([{}])')
p validBraces('(}')
p validBraces('[(])')
