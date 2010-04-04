require 'test_helper'

class ProblemTwoTest < Test::Unit::TestCase
  context "Fibonacci" do
    setup do
      @fib = Fibonacci.new
    end
    
    should "have inital sequence of 1,2" do
      assert_equal [1, 2], @fib.sequence
    end
    
    should "return the next number in the sequence" do
      assert_equal 3, @fib.get_next
    end
    
    should "store the next number in the sequence" do
      @fib.get_next
      assert_equal [1, 2, 3], @fib.sequence
    end
    
    should "work after several numbers have been generated" do
      @fib.get_next
      @fib.get_next
      @fib.get_next
      
      assert_equal [1, 2, 3, 5, 8], @fib.sequence
    end
  end
end
