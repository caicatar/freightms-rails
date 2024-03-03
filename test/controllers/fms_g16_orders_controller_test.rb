require "test_helper"

class FmsG16OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fms_g16_order = fms_g16_orders(:one)
  end

  test "should get index" do
    get fms_g16_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_fms_g16_order_url
    assert_response :success
  end

  test "should create fms_g16_order" do
    assert_difference("FmsG16Order.count") do
      post fms_g16_orders_url, params: { fms_g16_order: {  } }
    end

    assert_redirected_to fms_g16_order_url(FmsG16Order.last)
  end

  test "should show fms_g16_order" do
    get fms_g16_order_url(@fms_g16_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_fms_g16_order_url(@fms_g16_order)
    assert_response :success
  end

  test "should update fms_g16_order" do
    patch fms_g16_order_url(@fms_g16_order), params: { fms_g16_order: {  } }
    assert_redirected_to fms_g16_order_url(@fms_g16_order)
  end

  test "should destroy fms_g16_order" do
    assert_difference("FmsG16Order.count", -1) do
      delete fms_g16_order_url(@fms_g16_order)
    end

    assert_redirected_to fms_g16_orders_url
  end
end
