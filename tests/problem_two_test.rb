require 'test_helper'

class ProblemTwoTest < Test::Unit::TestCase
  context "Fibonacci" do
    setup do
      @fib = Fibonacci.new
    end
    
    should "has inital series of 0, 1" do
      assert_equal [0, 1], @fib.series
    end
    
    should "return the next number in the series" do
      assert_equal 1, @fib.get_next
    end
    
    should "work after several numbers have been generated" do
      @fib.get_next
      assert_equal 2, @fib.get_next
      assert_equal 3, @fib.get_next
      assert_equal 5, @fib.get_next
      assert_equal 8, @fib.get_next
    end
  end
  
  context "Fixnum" do
    should "know 4 is even" do
      assert 4.even?
    end
    
    should "know 5 is not even" do
      assert !5.even?
    end
  end
end
