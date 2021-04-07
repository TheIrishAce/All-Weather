require "test_helper"

class ForecastTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid forecast" do
    forecast = Forecast.new(day: "Monday", date: Date.new, forecast: "Heavy rain today.")
    assert forecast.valid?
  end

  #invalid tests, missing a required parameter.
  test "invalid forecast" do
    forecast = Forecast.new()
    assert_not forecast.save
  end

  test "invalid forecast day" do
    forecast = Forecast.new(date: Date.new, forecast: "Heavy rain today.")
    assert_not forecast.save
  end

  test "invalid forecast date" do
    forecast = Forecast.new(day: "Monday", forecast: "Heavy rain today.")
    assert_not forecast.save
  end

  test "invalid forecast forecast" do
    forecast = Forecast.new(day: "Monday", date: Date.new)
    assert_not forecast.save
  end

  #validation tests, minimum input tests.
  test "to short forecast day" do
    forecast = Forecast.new(day: "Mon", date: Date.new, forecast: "Heavy rain today.")
    assert_not forecast.save
  end

  test "to short forecast date" do
    forecast = Forecast.new(day: "Mon", date: 01/04/21, forecast: "Heavy rain today.")
    assert_not forecast.save
  end

  test "to short forecast forecast" do
    forecast = Forecast.new(day: "Monday", date: Date.new, forecast: "Rain")
    assert_not forecast.save
  end
end
