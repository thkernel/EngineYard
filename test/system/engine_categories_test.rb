require "application_system_test_case"

class EngineCategoriesTest < ApplicationSystemTestCase
  setup do
    @engine_category = engine_categories(:one)
  end

  test "visiting the index" do
    visit engine_categories_url
    assert_selector "h1", text: "Engine Categories"
  end

  test "creating a Engine category" do
    visit engine_categories_url
    click_on "New Engine Category"

    fill_in "Uid", with: @engine_category.uid
    click_on "Create Engine category"

    assert_text "Engine category was successfully created"
    click_on "Back"
  end

  test "updating a Engine category" do
    visit engine_categories_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @engine_category.uid
    click_on "Update Engine category"

    assert_text "Engine category was successfully updated"
    click_on "Back"
  end

  test "destroying a Engine category" do
    visit engine_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Engine category was successfully destroyed"
  end
end
