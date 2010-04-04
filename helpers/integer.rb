class Integer
  def multiple_of?(number)
    self % number == 0
  end
  
  def even?
    self % 2 == 0
  end
  
  def prime?
    (2..(Math.sqrt(self).ceil)).each do |attempt|
      if (self % attempt  == 0)
         return false
      end
    end
    true
  end
end