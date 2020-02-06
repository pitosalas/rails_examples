require 'test_helper'

class KeyvaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyvalue = keyvalues(:one)
  end

  test "should get index" do
    get keyvalues_url
    assert_response :success
  end

  test "should get new" do
    get new_keyvalue_url
    assert_response :success
  end

  test "should create keyvalue" do
    assert_difference('Keyvalue.count') do
      post keyvalues_url, params: { keyvalue: { key: @keyvalue.key, value: @keyvalue.value } }
    end

    assert_redirected_to keyvalue_url(Keyvalue.last)
  end

  test "should show keyvalue" do
    get keyvalue_url(@keyvalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_keyvalue_url(@keyvalue)
    assert_response :success
  end

  test "should update keyvalue" do
    patch keyvalue_url(@keyvalue), params: { keyvalue: { key: @keyvalue.key, value: @keyvalue.value } }
    assert_redirected_to keyvalue_url(@keyvalue)
  end

  test "should destroy keyvalue" do
    assert_difference('Keyvalue.count', -1) do
      delete keyvalue_url(@keyvalue)
    end

    assert_redirected_to keyvalues_url
  end
end
