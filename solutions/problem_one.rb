class ProblemOne
  def describe
    "Add all the natural numbers below one thousand that are multiples of 3 or 5."
  end
  
  def calculate(up_to=1000)
    (1..up_to-1).inject(0){|sum, number| number.multiple_of?(3) || number.multiple_of?(5) ? sum + number : sum }
  end
end
