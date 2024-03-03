require "application_system_test_case"

class FmsG16LoadsTest < ApplicationSystemTestCase
  setup do
    @fms_g16_load = fms_g16_loads(:one)
  end

  test "visiting the index" do
    visit fms_g16_loads_url
    assert_selector "h1", text: "Fms g16 loads"
  end

  test "should create fms g16 load" do
    visit fms_g16_loads_url
    click_on "New fms g16 load"

    click_on "Create Fms g16 load"

    assert_text "Fms g16 load was successfully created"
    click_on "Back"
  end

  test "should update Fms g16 load" do
    visit fms_g16_load_url(@fms_g16_load)
    click_on "Edit this fms g16 load", match: :first

    click_on "Update Fms g16 load"

    assert_text "Fms g16 load was successfully updated"
    click_on "Back"
  end

  test "should destroy Fms g16 load" do
    visit fms_g16_load_url(@fms_g16_load)
    click_on "Destroy this fms g16 load", match: :first

    assert_text "Fms g16 load was successfully destroyed"
  end
end
