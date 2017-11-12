require 'test_helper'

class ChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check = checks(:one)
  end

  test "should get index" do
    get checks_url
    assert_response :success
  end

  test "should get new" do
    get new_check_url
    assert_response :success
  end

  test "should create check" do
    assert_difference('Check.count') do
      post checks_url, params: { check: { pin1: @check.pin1, pin2: @check.pin2, pin3: @check.pin3, pin4: @check.pin4 } }
    end

    assert_redirected_to check_url(Check.last)
  end

  test "should show check" do
    get check_url(@check)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_url(@check)
    assert_response :success
  end

  test "should update check" do
    patch check_url(@check), params: { check: { pin1: @check.pin1, pin2: @check.pin2, pin3: @check.pin3, pin4: @check.pin4 } }
    assert_redirected_to check_url(@check)
  end

  test "should destroy check" do
    assert_difference('Check.count', -1) do
      delete check_url(@check)
    end

    assert_redirected_to checks_url
  end
end
