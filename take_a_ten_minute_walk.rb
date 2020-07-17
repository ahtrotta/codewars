def is_valid_walk(walk)
  return false if walk.size != 10
  nor_sth = 0
  est_wst = 0
  walk.each do |dir|
    case dir
    when 'n'  then nor_sth += 1
    when 's'  then nor_sth -= 1
    when 'e'  then est_wst += 1
    when 'w'  then est_wst -= 1
    end
  end
  nor_sth == 0 && est_wst == 0 ? true : false
end

# test cases

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])
p is_valid_walk(['w'])
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])
