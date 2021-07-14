def say_me_operations(numbers)
  nums = numbers.split.map(&:to_i)

  acts = (1...(nums.size - 1)).map do |i|
           curr_n = nums[i]
           last_n = nums[i - 1]
           next_n = nums[i + 1]

           if last_n + curr_n == next_n
             'addition'
           elsif last_n - curr_n == next_n
             'subtraction'
           elsif last_n * curr_n == next_n
             'multiplication'
           else
             'division'
           end
         end

  acts.join(', ')
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(say_me_operations("1 2 3 5 8"), "addition, addition, addition")
Test.assert_equals(say_me_operations("9 4 5 20 25"), "subtraction, multiplication, addition")
Test.assert_equals(say_me_operations("10 2 5 -3 -15 12"), "division, subtraction, multiplication, subtraction")
Test.assert_equals(say_me_operations("2 2 4"), "addition")
