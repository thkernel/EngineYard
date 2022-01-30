require "application_system_test_case"

class BookingItemsTest < ApplicationSystemTestCase
  setup do
    @booking_item = booking_items(:one)
  end

  test "visiting the index" do
    visit booking_items_url
    assert_selector "h1", text: "Booking Items"
  end

  test "creating a Booking item" do
    visit booking_items_url
    click_on "New Booking Item"

    fill_in "Booking", with: @booking_item.booking_id
    fill_in "End date", with: @booking_item.end_date
    fill_in "Engine", with: @booking_item.engine_id
    fill_in "Start date", with: @booking_item.start_date
    fill_in "Uid", with: @booking_item.uid
    click_on "Create Booking item"

    assert_text "Booking item was successfully created"
    click_on "Back"
  end

  test "updating a Booking item" do
    visit booking_items_url
    click_on "Edit", match: :first

    fill_in "Booking", with: @booking_item.booking_id
    fill_in "End date", with: @booking_item.end_date
    fill_in "Engine", with: @booking_item.engine_id
    fill_in "Start date", with: @booking_item.start_date
    fill_in "Uid", with: @booking_item.uid
    click_on "Update Booking item"

    assert_text "Booking item was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking item" do
    visit booking_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking item was successfully destroyed"
  end
end
