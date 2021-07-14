def zero(arg = 0)
  return arg if arg.is_a? Integer
  eval "0 #{arg.first} #{arg.last}"
end

def one(arg = 1)
  return arg if arg.is_a? Integer
  eval "1 #{arg.first} #{arg.last}"
end

def two(arg = 2)
  return arg if arg.is_a? Integer
  eval "2 #{arg.first} #{arg.last}"
end

def three(arg = 3)
  return arg if arg.is_a? Integer
  eval "3 #{arg.first} #{arg.last}"
end

def four(arg = 4)
  return arg if arg.is_a? Integer
  eval "4 #{arg.first} #{arg.last}"
end

def five(arg = 5)
  return arg if arg.is_a? Integer
  eval "5 #{arg.first} #{arg.last}"
end

def six(arg = 6)
  return arg if arg.is_a? Integer
  eval "6 #{arg.first} #{arg.last}"
end

def seven(arg = 7)
  return arg if arg.is_a? Integer
  eval " 7 #{arg.first} #{arg.last}"
end

def eight(arg = 8)
  return arg if arg.is_a? Integer
  eval "8 #{arg.first} #{arg.last}"
end

def nine(arg = 9)
  return arg if arg.is_a? Integer
  eval "9 #{arg.first} #{arg.last}"
end

def plus(arg)
  ['+', arg]
end

def minus(arg)
  ['-', arg]
end

def times(arg)
  ['*', arg]
end

def divided_by(arg)
  ['/', arg]
end

p seven(times(five())) == 35
p four(plus(nine())) == 13
p eight(minus(three())) == 5
p six(divided_by(two())) == 3
