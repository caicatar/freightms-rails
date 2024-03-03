require "application_system_test_case"

class FmsG16RoutesTest < ApplicationSystemTestCase
  setup do
    @fms_g16_route = fms_g16_routes(:one)
  end

  test "visiting the index" do
    visit fms_g16_routes_url
    assert_selector "h1", text: "Fms g16 routes"
  end

  test "should create fms g16 route" do
    visit fms_g16_routes_url
    click_on "New fms g16 route"

    click_on "Create Fms g16 route"

    assert_text "Fms g16 route was successfully created"
    click_on "Back"
  end

  test "should update Fms g16 route" do
    visit fms_g16_route_url(@fms_g16_route)
    click_on "Edit this fms g16 route", match: :first

    click_on "Update Fms g16 route"

    assert_text "Fms g16 route was successfully updated"
    click_on "Back"
  end

  test "should destroy Fms g16 route" do
    visit fms_g16_route_url(@fms_g16_route)
    click_on "Destroy this fms g16 route", match: :first

    assert_text "Fms g16 route was successfully destroyed"
  end
end
