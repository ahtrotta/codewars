# input
# - number to convert to to string representing factorial

BASE = ('0'..'9').to_a + ('A'..'Z').to_a

def dec2FactString(nb)
  start = 1
  start += 1 until (1..(start + 1)).inject(:*) > nb

  arr = start.downto(0).map do |n|
    val, nb = nb.divmod((1..n).inject(:*) || 1)
    BASE[val]
  end

  arr.join
end

def factString2Dec(str)
  sum = 0

  str.chars.reverse.each_with_index do |c, i|
    sum += BASE.index(c) * ((1..i).inject(:*) || 1)
  end

  sum.to_i
end

p dec2FactString(463)
p dec2FactString(36288000)
p factString2Dec('341010')
p dec2FactString(371993326789901217467999448150835199999999)
