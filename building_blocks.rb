class Block
  def initialize(arr)
    @width = arr[0]
    @length = arr[1]
    @height = arr[2]
  end
  
  def get_width()
    @width
  end
  
  def get_height()
    @height
  end
  
  def get_length()
    @length
  end
  
  def get_volume()
    @width * @height * @length
  end
  
  def get_surface_area()
    (2 * (@width * @length)) + (2 * (@width * @height)) + (2 * (@height * @length))
  end
end

b = Block.new([2, 2, 2])
p b.get_width() == 2
p b.get_length() == 2
p b.get_height() == 2
p b.get_volume() == 8
p b.get_surface_area() == 24
