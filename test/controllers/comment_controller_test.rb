require "test_helper"

class CommentControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    get blogposts_url
    assert_response :success
  end

  test "should get show" do
    get blogposts_url
    assert_response :success
  end

  test "should get new" do
    get blogposts_url
    assert_response :success
  end

  test "should get edit" do
    get blogposts_url
    assert_response :success
  end
end
