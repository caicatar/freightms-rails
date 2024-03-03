require "test_helper"

class FmsG16LoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fms_g16_load = fms_g16_loads(:one)
  end

  test "should get index" do
    get fms_g16_loads_url
    assert_response :success
  end

  test "should get new" do
    get new_fms_g16_load_url
    assert_response :success
  end

  test "should create fms_g16_load" do
    assert_difference("FmsG16Load.count") do
      post fms_g16_loads_url, params: { fms_g16_load: {  } }
    end

    assert_redirected_to fms_g16_load_url(FmsG16Load.last)
  end

  test "should show fms_g16_load" do
    get fms_g16_load_url(@fms_g16_load)
    assert_response :success
  end

  test "should get edit" do
    get edit_fms_g16_load_url(@fms_g16_load)
    assert_response :success
  end

  test "should update fms_g16_load" do
    patch fms_g16_load_url(@fms_g16_load), params: { fms_g16_load: {  } }
    assert_redirected_to fms_g16_load_url(@fms_g16_load)
  end

  test "should destroy fms_g16_load" do
    assert_difference("FmsG16Load.count", -1) do
      delete fms_g16_load_url(@fms_g16_load)
    end

    assert_redirected_to fms_g16_loads_url
  end
end
