require "test_helper"

class RainfallTest < ActiveSupport::TestCase

  test "valid profile" do
    rainfall = Rainfall.new(amount: 50, forecast_id: 2)
    assert rainfall.valid?
  end

  #invalid tests, missing a required parameter.
  test "invalid profile" do
    rainfall = Rainfall.new()
    assert_not rainfall.save
  end

  test "invalid rainfall amount" do
    rainfall = Rainfall.new(forecast_id: 2)
    assert_not rainfall.save
  end

  test "invalid rainfall forecast id" do
    rainfall = Rainfall.new(amount: 50)
    assert_not rainfall.save
  end

  #validation tests, minimum input tests.
  test "to short rainfall amount" do
    rainfall = Rainfall.new(amount: -5, forecast_id: 2)
    assert_not rainfall.save
  end

  #validation tests, maximum input tests.
  test "to long rainfall amount" do
    rainfall = Rainfall.new(amount: 500000, forecast_id: 2)
    assert_not rainfall.save
  end

end
