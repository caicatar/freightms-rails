require "application_system_test_case"

class FmsG16ShipmentsTest < ApplicationSystemTestCase
  setup do
    @fms_g16_shipment = fms_g16_shipments(:one)
  end

  test "visiting the index" do
    visit fms_g16_shipments_url
    assert_selector "h1", text: "Fms g16 shipments"
  end

  test "should create fms g16 shipment" do
    visit fms_g16_shipments_url
    click_on "New fms g16 shipment"

    click_on "Create Fms g16 shipment"

    assert_text "Fms g16 shipment was successfully created"
    click_on "Back"
  end

  test "should update Fms g16 shipment" do
    visit fms_g16_shipment_url(@fms_g16_shipment)
    click_on "Edit this fms g16 shipment", match: :first

    click_on "Update Fms g16 shipment"

    assert_text "Fms g16 shipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Fms g16 shipment" do
    visit fms_g16_shipment_url(@fms_g16_shipment)
    click_on "Destroy this fms g16 shipment", match: :first

    assert_text "Fms g16 shipment was successfully destroyed"
  end
end
