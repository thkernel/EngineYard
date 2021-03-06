require "application_system_test_case"

class OdometersTest < ApplicationSystemTestCase
  setup do
    @odometer = odometers(:one)
  end

  test "visiting the index" do
    visit odometers_url
    assert_selector "h1", text: "Odometers"
  end

  test "creating a Odometer" do
    visit odometers_url
    click_on "New Odometer"

    fill_in "Uid", with: @odometer.uid
    click_on "Create Odometer"

    assert_text "Odometer was successfully created"
    click_on "Back"
  end

  test "updating a Odometer" do
    visit odometers_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @odometer.uid
    click_on "Update Odometer"

    assert_text "Odometer was successfully updated"
    click_on "Back"
  end

  test "destroying a Odometer" do
    visit odometers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Odometer was successfully destroyed"
  end
end
