def sum(*args)
  args.select { |el| el.class == Integer }.sum
end

p sum(1, 2, 3)
