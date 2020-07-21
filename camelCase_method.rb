def camelcase(str)
  str.split.map(&:capitalize).join
end

p camelcase('hello case')
