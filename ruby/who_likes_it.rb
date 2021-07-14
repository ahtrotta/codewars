require 'pry'


def likes(names)
  people = names.size
  case people
  when 0
    'no one likes this'
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{people - 2} others like this"
  end
end

p likes([])
p likes(['Peter'])
p likes(['Jacob', 'Alex'])
p likes(%w(Max John Mark))
p likes(%w(Alex Jacob Mark Max))
