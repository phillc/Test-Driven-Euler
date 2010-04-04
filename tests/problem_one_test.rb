require 'test_helper'

class ProblemOneTest < Test::Unit::TestCase
  context "fixnum" do
    context "9" do
      setup do
        @number = 9
      end
      
      should "be a multiple of 3" do
        assert @number.multiple_of?(3)
      end

      should "not be a multiple of 5" do
        assert !@number.multiple_of?(5)
      end
    end
    
    context "10" do
      setup do
        @number = 10
      end
    
      should "should be a multiple of 5" do
        assert @number.multiple_of?(5)
      end  
      
      should "not be a multiple of 3" do
        assert !@number.multiple_of?(3)
      end
    end
    
    context "Problem One" do
      setup do
        @problem = ProblemOne.new
      end
      
      should "calculate the sum of all the natural numbers below 10 that are multiples of 3 or 5" do
        assert_equal 23, @problem.calculate(10)
      end
    end
  end
end
