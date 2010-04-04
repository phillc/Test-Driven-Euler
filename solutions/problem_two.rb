class ProblemTwo
  def initialize
    @fibonacci = Fibonacci.new
  end
  
  def describe
    "Find the sum of all the even-valued terms in the sequence which do not exceed four million."
  end
  
  def calculate(not_exceed=4000000)
    numbers = []
    while true do
      number = @fibonacci.get_next
      break if number > not_exceed
      numbers << number if number.even?
    end
    
    numbers.inject {|sum, n| sum + n }
  end
end
