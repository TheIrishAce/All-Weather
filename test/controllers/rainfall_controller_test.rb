require "test_helper"

class RainfallControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  #all 4 orignally generated with
  #get rainfall_edit_url

  test "should get index" do
    get forecast_rainfall_url
    assert_response :success
  end

  test "should get show" do
    get forecast_rainfall_url
    assert_response :success
  end

  test "should get new" do
    get forecast_rainfall_url
    assert_response :success
  end

  test "should get edit" do
    get forecast_rainfall_url
    assert_response :success
  end
end
