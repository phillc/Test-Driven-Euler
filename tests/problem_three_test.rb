require 'test_helper'

class ProblemThreeTest < Test::Unit::TestCase
  context "Integer" do
    should "know 11 is prime" do
      assert 11.prime?
    end
    
    should "know 13 is prime" do
      assert 13.prime?
    end
    
    should "know 18 is not prime" do
      assert !18.prime?
    end
    
    should "know 21 is not prime" do
      assert !21.prime?
    end
  end
  
  context "Prime factors" do
    setup do
      @problem = ProblemThree.new
    end
    
    should "of 13195 are 5, 7, 13 and 29" do
      assert_equal [5, 7, 13, 29], @problem.solve(13195)
    end
  end
end
