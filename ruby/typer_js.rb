class Typer
  def self.is_number?(arg)
    arg.is_a? Numeric
  end

  def self.is_string?(arg)
    arg.is_a? String
  end

  def self.is_array?(arg)
    arg.is_a? Array
  end

  def self.is_time?(arg)
    arg.is_a? Time
  end

  def self.is_regexp?(arg)
    arg.is_a? Regexp
  end

  def self.is_boolean?(arg)
    arg.is_a?(TrueClass) || arg.is_a?(FalseClass)
  end

  def self.is_exception?(arg)
    arg.is_a? Exception
  end

  def self.is_nil?(arg)
    arg.nil?
  end
end
