class String
  def to_alternating_case
    chars = self.chars.map do |c|
      if ('a'..'z').include?(c)
        c.upcase
      elsif ('A'..'Z').include?(c)
        c.downcase
      else
        c
      end
    end
    chars.join
  end
end

p 'hello'.to_alternating_case
p 'altERnaTIng cAsE'.to_alternating_case
