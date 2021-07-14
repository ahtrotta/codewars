def expression_matter(a, b, c)
  case [a, b, c].count { |n| n < 2 }
  when 3
    a + b + c
  when 2
    if a == 1 && c == 1
      a + b + c
    elsif a == 1
      (a + b) * c
    else
      a * (b + c)
    end
  when 1
    a > c ? a * (b + c) : (a + b) * c
  else
    a * b * c
  end
end

p expression_matter(2, 1, 2) == 6
p expression_matter(2, 1, 1) == 4
p expression_matter(1, 1, 1) == 3
p expression_matter(1, 2, 3) == 9
p expression_matter(1, 3, 1) == 5
p expression_matter(2, 2, 2) == 8
p expression_matter(5, 1, 3) == 20
p expression_matter(3, 5, 7) == 105
p expression_matter(5, 6, 1) == 35
p expression_matter(1, 6, 1) == 8
