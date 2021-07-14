def solve(s)
  (lwr = s.count('a-z')) < (s.length - lwr) ? s.upcase : s.downcase
end

p solve('code') == 'code'
p solve('CODe') == 'CODE'
p solve('COde') == 'code'
