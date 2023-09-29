require "application_system_test_case"

class PoetsTest < ApplicationSystemTestCase
  setup do
    @poet = poets(:one)
  end

  test "visiting the index" do
    visit poets_url
    assert_selector "h1", text: "Poets"
  end

  test "should create poet" do
    visit poets_url
    click_on "New poet"

    fill_in "Name", with: @poet.name
    fill_in "Year", with: @poet.year
    click_on "Create Poet"

    assert_text "Poet was successfully created"
    click_on "Back"
  end

  test "should update Poet" do
    visit poet_url(@poet)
    click_on "Edit this poet", match: :first

    fill_in "Name", with: @poet.name
    fill_in "Year", with: @poet.year
    click_on "Update Poet"

    assert_text "Poet was successfully updated"
    click_on "Back"
  end

  test "should destroy Poet" do
    visit poet_url(@poet)
    click_on "Destroy this poet", match: :first

    assert_text "Poet was successfully destroyed"
  end
end
