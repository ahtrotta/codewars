class OmniBool
  def ==(_)
    true
  end
end

omnibool = OmniBool.new
p omnibool == true && omnibool == false
