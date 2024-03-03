require "test_helper"

class FmsG16ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fms_g16_shipment = fms_g16_shipments(:one)
  end

  test "should get index" do
    get fms_g16_shipments_url
    assert_response :success
  end

  test "should get new" do
    get new_fms_g16_shipment_url
    assert_response :success
  end

  test "should create fms_g16_shipment" do
    assert_difference("FmsG16Shipment.count") do
      post fms_g16_shipments_url, params: { fms_g16_shipment: {  } }
    end

    assert_redirected_to fms_g16_shipment_url(FmsG16Shipment.last)
  end

  test "should show fms_g16_shipment" do
    get fms_g16_shipment_url(@fms_g16_shipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_fms_g16_shipment_url(@fms_g16_shipment)
    assert_response :success
  end

  test "should update fms_g16_shipment" do
    patch fms_g16_shipment_url(@fms_g16_shipment), params: { fms_g16_shipment: {  } }
    assert_redirected_to fms_g16_shipment_url(@fms_g16_shipment)
  end

  test "should destroy fms_g16_shipment" do
    assert_difference("FmsG16Shipment.count", -1) do
      delete fms_g16_shipment_url(@fms_g16_shipment)
    end

    assert_redirected_to fms_g16_shipments_url
  end
end
