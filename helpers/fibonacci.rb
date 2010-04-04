class Fibonacci
  attr_accessor :series
  def initialize
    @series = [0,1]
  end
  
  def get_next
    @series << @series[0] + @series[1]
    @series.shift
    @series.last
  end
end