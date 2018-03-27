require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get about_us" do
    get home_about_us_url
    assert_response :success
  end

  test "should get rescue" do
    get home_rescue_url
    assert_response :success
  end

  test "should get shop" do
    get home_shop_url
    assert_response :success
  end

end
