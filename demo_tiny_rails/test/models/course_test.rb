require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "tautology works" do
    assert_equal 2, 1+1, "Cant add?"
  end

  test "should be able to find a certain course" do
    assert Course.where(number: 167).size == 1
  end
end
