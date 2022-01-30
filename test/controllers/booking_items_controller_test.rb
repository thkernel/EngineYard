require 'test_helper'

class BookingItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_item = booking_items(:one)
  end

  test "should get index" do
    get booking_items_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_item_url
    assert_response :success
  end

  test "should create booking_item" do
    assert_difference('BookingItem.count') do
      post booking_items_url, params: { booking_item: { booking_id: @booking_item.booking_id, end_date: @booking_item.end_date, engine_id: @booking_item.engine_id, start_date: @booking_item.start_date, uid: @booking_item.uid } }
    end

    assert_redirected_to booking_item_url(BookingItem.last)
  end

  test "should show booking_item" do
    get booking_item_url(@booking_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_item_url(@booking_item)
    assert_response :success
  end

  test "should update booking_item" do
    patch booking_item_url(@booking_item), params: { booking_item: { booking_id: @booking_item.booking_id, end_date: @booking_item.end_date, engine_id: @booking_item.engine_id, start_date: @booking_item.start_date, uid: @booking_item.uid } }
    assert_redirected_to booking_item_url(@booking_item)
  end

  test "should destroy booking_item" do
    assert_difference('BookingItem.count', -1) do
      delete booking_item_url(@booking_item)
    end

    assert_redirected_to booking_items_url
  end
end
