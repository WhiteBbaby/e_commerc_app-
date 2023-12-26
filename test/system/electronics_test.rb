require "application_system_test_case"

class ElectronicsTest < ApplicationSystemTestCase
  setup do
    @electronic = electronics(:one)
  end

  test "visiting the index" do
    visit electronics_url
    assert_selector "h1", text: "Electronics"
  end

  test "should create electronic" do
    visit electronics_url
    click_on "New electronic"

    fill_in "Description", with: @electronic.description
    fill_in "Fulldescription", with: @electronic.fulldescription
    fill_in "Image", with: @electronic.image
    fill_in "Name", with: @electronic.name
    fill_in "Price", with: @electronic.price
    click_on "Create Electronic"

    assert_text "Electronic was successfully created"
    click_on "Back"
  end

  test "should update Electronic" do
    visit electronic_url(@electronic)
    click_on "Edit this electronic", match: :first

    fill_in "Description", with: @electronic.description
    fill_in "Fulldescription", with: @electronic.fulldescription
    fill_in "Image", with: @electronic.image
    fill_in "Name", with: @electronic.name
    fill_in "Price", with: @electronic.price
    click_on "Update Electronic"

    assert_text "Electronic was successfully updated"
    click_on "Back"
  end

  test "should destroy Electronic" do
    visit electronic_url(@electronic)
    click_on "Destroy this electronic", match: :first

    assert_text "Electronic was successfully destroyed"
  end
end
