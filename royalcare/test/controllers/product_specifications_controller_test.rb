require 'test_helper'

class ProductSpecificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_specification = product_specifications(:one)
  end

  test "should get index" do
    get product_specifications_url
    assert_response :success
  end

  test "should get new" do
    get new_product_specification_url
    assert_response :success
  end

  test "should create product_specification" do
    assert_difference('ProductSpecification.count') do
      post product_specifications_url, params: { product_specification: { price: @product_specification.price, product_id: @product_specification.product_id, size: @product_specification.size } }
    end

    assert_redirected_to product_specification_url(ProductSpecification.last)
  end

  test "should show product_specification" do
    get product_specification_url(@product_specification)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_specification_url(@product_specification)
    assert_response :success
  end

  test "should update product_specification" do
    patch product_specification_url(@product_specification), params: { product_specification: { price: @product_specification.price, product_id: @product_specification.product_id, size: @product_specification.size } }
    assert_redirected_to product_specification_url(@product_specification)
  end

  test "should destroy product_specification" do
    assert_difference('ProductSpecification.count', -1) do
      delete product_specification_url(@product_specification)
    end

    assert_redirected_to product_specifications_url
  end
end
