require "application_system_test_case"

class UomsTest < ApplicationSystemTestCase
  setup do
    @uom = uoms(:one)
  end

  test "visiting the index" do
    visit uoms_url
    assert_selector "h1", text: "Uoms"
  end

  test "should create uom" do
    visit uoms_url
    click_on "New uom"

    fill_in "Description", with: @uom.description
    fill_in "Name", with: @uom.name
    click_on "Create Uom"

    assert_text "Uom was successfully created"
    click_on "Back"
  end

  test "should update Uom" do
    visit uom_url(@uom)
    click_on "Edit this uom", match: :first

    fill_in "Description", with: @uom.description
    fill_in "Name", with: @uom.name
    click_on "Update Uom"

    assert_text "Uom was successfully updated"
    click_on "Back"
  end

  test "should destroy Uom" do
    visit uom_url(@uom)
    click_on "Destroy this uom", match: :first

    assert_text "Uom was successfully destroyed"
  end
end
