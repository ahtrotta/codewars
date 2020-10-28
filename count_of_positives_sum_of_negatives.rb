def count_positives_sum_negatives(lst)
  [lst.count { |n| n > 0 }, lst.select { |n| n < 0 }.sum]
end
