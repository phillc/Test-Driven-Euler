class Fibonacci
  attr_accessor :sequence
  def initialize
    @sequence = [1,2]
  end
  
  def get_next
    @sequence << sequence[-1] + sequence[-2]
    @sequence.last
  end
end