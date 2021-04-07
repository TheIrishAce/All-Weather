require "test_helper"

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @blogpost = blogposts(:one)
  end

  test "should get index" do
    get blogposts_url
    assert_response :success
  end

  test "should get new" do
    get new_blogpost_url
    assert_response :success
  end

  test "should create blogpost" do
    assert_difference('Blogpost.count', 1) do
      post blogposts_url, params: { blogpost: { author: @blogpost.author, category: @blogpost.category, image_url: @blogpost.image_url, title: @blogpost.title } }
    end

    assert_redirected_to blogposts_url()
  end

  test "should show blogpost" do
    get blogpost_url(@blogpost)
    assert_response :success
  end

  test "should get edit" do
    get blogpost_url(@blogpost)
    assert_response :success
  end

  test "should update blogpost" do
    patch blogpost_url(@blogpost), params: { blogpost: { author: @blogpost.author, category: @blogpost.category, image_url: @blogpost.image_url, title: @blogpost.title } }
    assert_redirected_to blogpost_url(@blogpost)
  end

  test "should destroy blogpost" do
    assert_difference('Blogpost.count', -1) do
      #blog_id = @blogpost.id
      #Blogpost.destroy(blog_id)
      delete blogpost_url(@blogpost)
    end

    assert_redirected_to blogposts_path
  end

end
