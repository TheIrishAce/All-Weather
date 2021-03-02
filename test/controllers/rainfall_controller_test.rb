require "test_helper"

class RainfallControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rainfall_index_url
    assert_response :success
  end

  test "should get show" do
    get rainfall_show_url
    assert_response :success
  end

  test "should get new" do
    get rainfall_new_url
    assert_response :success
  end

  test "should get edit" do
    get rainfall_edit_url
    assert_response :success
  end
end
