require 'test_helper'

class TaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tum = ta(:one)
  end

  test "should get index" do
    get ta_url
    assert_response :success
  end

  test "should get new" do
    get new_tum_url
    assert_response :success
  end

  test "should create tum" do
    assert_difference('Tum.count') do
      post ta_url, params: { tum: { course_id: @tum.course_id, student_id: @tum.student_id } }
    end

    assert_redirected_to tum_url(Tum.last)
  end

  test "should show tum" do
    get tum_url(@tum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tum_url(@tum)
    assert_response :success
  end

  test "should update tum" do
    patch tum_url(@tum), params: { tum: { course_id: @tum.course_id, student_id: @tum.student_id } }
    assert_redirected_to tum_url(@tum)
  end

  test "should destroy tum" do
    assert_difference('Tum.count', -1) do
      delete tum_url(@tum)
    end

    assert_redirected_to ta_url
  end
end
