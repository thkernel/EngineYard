require 'test_helper'

class TechnicalVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technical_visit = technical_visits(:one)
  end

  test "should get index" do
    get technical_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_technical_visit_url
    assert_response :success
  end

  test "should create technical_visit" do
    assert_difference('TechnicalVisit.count') do
      post technical_visits_url, params: { technical_visit: { uid: @technical_visit.uid } }
    end

    assert_redirected_to technical_visit_url(TechnicalVisit.last)
  end

  test "should show technical_visit" do
    get technical_visit_url(@technical_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_technical_visit_url(@technical_visit)
    assert_response :success
  end

  test "should update technical_visit" do
    patch technical_visit_url(@technical_visit), params: { technical_visit: { uid: @technical_visit.uid } }
    assert_redirected_to technical_visit_url(@technical_visit)
  end

  test "should destroy technical_visit" do
    assert_difference('TechnicalVisit.count', -1) do
      delete technical_visit_url(@technical_visit)
    end

    assert_redirected_to technical_visits_url
  end
end
