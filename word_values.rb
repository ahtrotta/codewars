def wordValue(arr)
  arr.map.with_index do |w, i|
    w.chars.map { |c| ('a'..'z').include?(c) ? c.ord - 96 : 0 }.sum * (i + 1)
  end
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(wordValue(["codewars","abc","xyz"]),[88,12,225])
Test.assert_equals(wordValue(["abc abc","abc abc","abc","abc"]),[12,24,18,24])
Test.assert_equals(wordValue(["abc","abc","abc","abc"]),[6,12,18,24])
Test.assert_equals(wordValue(["abcdefghijklmnopqrstuvwxyz","stamford bridge","haskellers"]), [351,282,330])
Test.assert_equals(wordValue(["i love coding","better than pizza","i got this"]),[115,382,321])
Test.assert_equals(wordValue(["mercury","venus","earth mars","jupiter saturn","uranus neptune"]),[103, 162, 309, 768, 945])
Test.assert_equals(wordValue(["a cup","some tea","more coffee","one glass"]),[41, 156, 273, 368])
Test.assert_equals(wordValue(["a","e","i","o","u","the end"]),[1, 10, 27, 60, 105, 336])
Test.assert_equals(wordValue(["coding","better pizza","i got this too"]),[52, 296, 471])
