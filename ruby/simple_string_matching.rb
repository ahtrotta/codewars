# input
# - two strings
#   - one string may have an asterisk
#
# output
# - true or false
#
# algorithm
# - 

def solve(a, b)
  return true if a == b
  return false unless a.include?('*')

  frst, lst = a.split('*')
  lst ||= ''
  frst ||= ''
  replacement = b.delete_prefix(frst).delete_suffix(lst)

  frst + replacement + lst == b
end

p solve("code*s","codewars") == true
p solve("codewar*s","codewars") == true
p solve("code*warrior","codewars") ==false
p solve("c","c") ==true
p solve("*s","codewars") ==true
p solve("*s","s") == true
p solve("s*","s") ==true
p solve("aa","aaa") == false
p solve("aa*","aaa") == true
p solve("aaa","aa") == false
p solve("aaa*","aa") == false
p solve("*","codewars") == true
p solve("aaa*aaa", "aaa") == false
p solve('codewars', 'codewars') == true
