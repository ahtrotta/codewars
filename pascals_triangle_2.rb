def pascal(depth)
  tri = [[1]]
  curr_dep = 1

  until curr_dep == depth
    row = [1] + tri.last.each_cons(2).map(&:sum) + [1]
    tri << row
    curr_dep += 1
  end

  tri
end

p pascal(1) == [[1]]
p pascal(5) == [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
