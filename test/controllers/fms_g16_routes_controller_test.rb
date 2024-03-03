require "test_helper"

class FmsG16RoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fms_g16_route = fms_g16_routes(:one)
  end

  test "should get index" do
    get fms_g16_routes_url
    assert_response :success
  end

  test "should get new" do
    get new_fms_g16_route_url
    assert_response :success
  end

  test "should create fms_g16_route" do
    assert_difference("FmsG16Route.count") do
      post fms_g16_routes_url, params: { fms_g16_route: {  } }
    end

    assert_redirected_to fms_g16_route_url(FmsG16Route.last)
  end

  test "should show fms_g16_route" do
    get fms_g16_route_url(@fms_g16_route)
    assert_response :success
  end

  test "should get edit" do
    get edit_fms_g16_route_url(@fms_g16_route)
    assert_response :success
  end

  test "should update fms_g16_route" do
    patch fms_g16_route_url(@fms_g16_route), params: { fms_g16_route: {  } }
    assert_redirected_to fms_g16_route_url(@fms_g16_route)
  end

  test "should destroy fms_g16_route" do
    assert_difference("FmsG16Route.count", -1) do
      delete fms_g16_route_url(@fms_g16_route)
    end

    assert_redirected_to fms_g16_routes_url
  end
end
