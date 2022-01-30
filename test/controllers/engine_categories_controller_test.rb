require 'test_helper'

class EngineCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @engine_category = engine_categories(:one)
  end

  test "should get index" do
    get engine_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_engine_category_url
    assert_response :success
  end

  test "should create engine_category" do
    assert_difference('EngineCategory.count') do
      post engine_categories_url, params: { engine_category: { uid: @engine_category.uid } }
    end

    assert_redirected_to engine_category_url(EngineCategory.last)
  end

  test "should show engine_category" do
    get engine_category_url(@engine_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_engine_category_url(@engine_category)
    assert_response :success
  end

  test "should update engine_category" do
    patch engine_category_url(@engine_category), params: { engine_category: { uid: @engine_category.uid } }
    assert_redirected_to engine_category_url(@engine_category)
  end

  test "should destroy engine_category" do
    assert_difference('EngineCategory.count', -1) do
      delete engine_category_url(@engine_category)
    end

    assert_redirected_to engine_categories_url
  end
end
