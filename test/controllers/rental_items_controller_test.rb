require 'test_helper'

class RentalItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_item = rental_items(:one)
  end

  test "should get index" do
    get rental_items_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_item_url
    assert_response :success
  end

  test "should create rental_item" do
    assert_difference('RentalItem.count') do
      post rental_items_url, params: { rental_item: { uid: @rental_item.uid } }
    end

    assert_redirected_to rental_item_url(RentalItem.last)
  end

  test "should show rental_item" do
    get rental_item_url(@rental_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_item_url(@rental_item)
    assert_response :success
  end

  test "should update rental_item" do
    patch rental_item_url(@rental_item), params: { rental_item: { uid: @rental_item.uid } }
    assert_redirected_to rental_item_url(@rental_item)
  end

  test "should destroy rental_item" do
    assert_difference('RentalItem.count', -1) do
      delete rental_item_url(@rental_item)
    end

    assert_redirected_to rental_items_url
  end
end
