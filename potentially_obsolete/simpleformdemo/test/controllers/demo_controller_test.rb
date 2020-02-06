require 'test_helper'

class DemoControllerTest < ActionDispatch::IntegrationTest
  test "should get demo1" do
    get demo_demo1_url
    assert_response :success
  end

  test "should get demo2" do
    get demo_demo2_url
    assert_response :success
  end

  test "should get demo3" do
    get demo_demo3_url
    assert_response :success
  end

end
