class Fixnum
  def multiple_of?(number)
    self % number == 0
  end
end