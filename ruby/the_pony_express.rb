def riders(stations)
  riders = 1
  curr_dis = 0

  stations.each do |station|
    if station + curr_dis > 100
      curr_dis = station
      riders += 1
    else
      curr_dis += station
    end
  end

  riders
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(riders([18, 15]), 1)
Test.assert_equals(riders([43, 23, 40, 13]), 2)
Test.assert_equals(riders([33, 8, 16, 47, 30, 30, 46]), 3)
Test.assert_equals(riders([6, 24, 6, 8, 28, 8, 23, 47, 17, 29, 37, 18, 40, 49]), 4)
