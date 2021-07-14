def rgb(r, g, b)
  r, g, b = [r, g, b].map do |val|
    if val < 0
      0
    elsif val > 255
      255
    else
      val
    end
  end
  
  format('%02x%02x%02x', r, g, b).upcase
end

p rgb(0, 0, 0)
