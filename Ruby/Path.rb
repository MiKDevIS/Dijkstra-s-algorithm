class Path
  def initialize (lenght)
    @lenght = lenght.to_i
  end
  #accessor methods
  def getLenght
    @lenght
  end
  def setLenght=(value)
    @lenght=value.to_i
  end
end
