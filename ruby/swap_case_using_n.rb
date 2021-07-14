def spec_swap(s, n)
  bin_n = n.to_s(2)
  bin_len = bin_n.length
  idx = 0
  
  s.each_char.with_object('') do |c, str|
    if c =~ /[a-zA-Z]/
      str << (bin_n[idx] == '1' ? c.swapcase : c)
      idx = (idx + 1) % bin_len
    else
      str << c
    end
  end
end

class Test
  def self.assert_equals(in1, in2)
    result = (in1 == in2)
    p result
    result
  end
end

p spec_swap("Hello world!", 11)

Test.assert_equals(spec_swap("Hello world!", 11), "heLLO wORLd!")
Test.assert_equals(spec_swap("the quick broWn fox leapt over the fence", 9), "The QUicK BrowN foX LeaPT ovER thE FenCE")
Test.assert_equals(spec_swap("eVerybody likes ice cReam", 85), "EVErYbODy LiKeS IcE creAM")
Test.assert_equals(spec_swap("gOOd MOrniNg", 7864), "GooD MorNIng")
Test.assert_equals(spec_swap("how are you today?", 12345), "HOw are yoU TOdaY?")
Test.assert_equals(spec_swap("the lord of the rings", 0), "the lord of the rings")
Test.assert_equals(spec_swap("", 11345), "")
