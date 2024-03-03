require "application_system_test_case"

class FmsG16OrdersTest < ApplicationSystemTestCase
  setup do
    @fms_g16_order = fms_g16_orders(:one)
  end

  test "visiting the index" do
    visit fms_g16_orders_url
    assert_selector "h1", text: "Fms g16 orders"
  end

  test "should create fms g16 order" do
    visit fms_g16_orders_url
    click_on "New fms g16 order"

    click_on "Create Fms g16 order"

    assert_text "Fms g16 order was successfully created"
    click_on "Back"
  end

  test "should update Fms g16 order" do
    visit fms_g16_order_url(@fms_g16_order)
    click_on "Edit this fms g16 order", match: :first

    click_on "Update Fms g16 order"

    assert_text "Fms g16 order was successfully updated"
    click_on "Back"
  end

  test "should destroy Fms g16 order" do
    visit fms_g16_order_url(@fms_g16_order)
    click_on "Destroy this fms g16 order", match: :first

    assert_text "Fms g16 order was successfully destroyed"
  end
end
