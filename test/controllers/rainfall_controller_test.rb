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
      #@rain = Rainfall.create(amount: 55.5, forecast_id: 1)
      @forecast = forecasts(:two)
      
      post forecast_rainfalls_path, params: { rainfall: { amount: 50, forecast_id: @forecast.id } }
    end
    
    assert_redirected_to new_forecast_rainfall(@rain)
  end

  test "should get edit" do
    forecast_id = 1
    rainfall_id = 1
    get edit_forecast_rainfall_path(forecast_id, rainfall_id)
    assert_response :success
  end
end
