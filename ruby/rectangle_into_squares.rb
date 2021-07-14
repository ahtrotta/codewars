require 'pry'

def sqInRect(lng, wdth)
  return nil if lng == wdth
  arr = []
  until lng == 0 || wdth == 0
    if lng > wdth
      arr << wdth
      lng -= wdth
    else
      arr << lng
      wdth -= lng
    end
  end
  arr
end

p sqInRect(5, 3)
