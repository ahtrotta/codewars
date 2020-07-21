def valid_parentheses(string)
  while string.gsub!('()', ''); end
  string.empty?
end

p valid_parentheses('()')
