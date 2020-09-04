class Ghost
  attr_reader :color

  def initialize
    @color = %w(white yellow purple red).sample
  end
end
