require "application_system_test_case"

class InsurersTest < ApplicationSystemTestCase
  setup do
    @insurer = insurers(:one)
  end

  test "visiting the index" do
    visit insurers_url
    assert_selector "h1", text: "Insurers"
  end

  test "creating a Insurer" do
    visit insurers_url
    click_on "New Insurer"

    fill_in "Uid", with: @insurer.uid
    click_on "Create Insurer"

    assert_text "Insurer was successfully created"
    click_on "Back"
  end

  test "updating a Insurer" do
    visit insurers_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @insurer.uid
    click_on "Update Insurer"

    assert_text "Insurer was successfully updated"
    click_on "Back"
  end

  test "destroying a Insurer" do
    visit insurers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insurer was successfully destroyed"
  end
end
