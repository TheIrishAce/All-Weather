require "test_helper"

class RainfallControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    forecast_id = 1
    get forecast_rainfalls_path(forecast_id)
    assert_response :success
  end

  test "should get show" do
    forecast_id = 1
    rainfall_id = 1
    #get forecast_rainfall_path(@forecast, @rainfall)
    get forecast_rainfall_path(forecast_id, rainfall_id)
    assert_response :success
  end

  test "should get new" do
    forecast_id = 1
    get new_forecast_rainfall_path(forecast_id)
    assert_response :success
  end

  test "should create rainfall" do
    assert_difference('Rainfall.count') do
      post forecast_rainfalls_url, params: { rainfall: { id: @rainfall.id, amount: @rainfall.amount, warning_yellow: @rainfall.warning_yellow, warning_orange: @rainfall.warning_orange, warning_red: @rainfall.warning_red } }
    end

    assert_redirected_to rainfall_url(Rainfall.last)
  end

  test "should get edit" do
    forecast_id = 1
    rainfall_id = 1
    get edit_forecast_rainfall_path(forecast_id, rainfall_id)
    assert_response :success
  end
end
