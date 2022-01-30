require "application_system_test_case"

class TechnicalVisitsTest < ApplicationSystemTestCase
  setup do
    @technical_visit = technical_visits(:one)
  end

  test "visiting the index" do
    visit technical_visits_url
    assert_selector "h1", text: "Technical Visits"
  end

  test "creating a Technical visit" do
    visit technical_visits_url
    click_on "New Technical Visit"

    fill_in "Uid", with: @technical_visit.uid
    click_on "Create Technical visit"

    assert_text "Technical visit was successfully created"
    click_on "Back"
  end

  test "updating a Technical visit" do
    visit technical_visits_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @technical_visit.uid
    click_on "Update Technical visit"

    assert_text "Technical visit was successfully updated"
    click_on "Back"
  end

  test "destroying a Technical visit" do
    visit technical_visits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Technical visit was successfully destroyed"
  end
end
