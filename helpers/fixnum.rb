class Integer
  def multiple_of?(number)
    self % number == 0
  end
  
  def even?
    self % 2 == 0
  end
end