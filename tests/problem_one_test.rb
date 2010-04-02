require 'test_helper'

class ProblemOneTest < Test::Unit::TestCase
  context "Problem One" do
    setup do
      @problem = ProblemOne.new
    end
    
    should "should know 9 is a multiple of 3" do
      assert @problem.multiple_of_3?(9)
    end

    should "should know 10 is not a multiple of 3" do
      assert_false @problem.multiple_of_3?(10)
    end
    
    should "should know 10 is a multiple of 5" do
      assert @problem.multiple_of_3?(10)
    end

    should "should know 9 is not a multiple of 3" do
      assert_false @problem.multiple_of_3?(9)
    end
  end
end
