require "test_helper"

class BlogpostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid blogpost" do
    blogpost = Blogpost.new(title: 'Test blogpost 01', category: 'Weather Alert', author: 'Max Delaney', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert blogpost.valid?
  end

  #invalid tests, missing a required parameter.
  test "invalid blogpost" do
    blogpost = Blogpost.new
    assert_not blogpost.save
  end

  test "invalid blogpost title" do
    blogpost = Blogpost.new( category: 'Weather Alert', author: 'Max Delaney', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end

  test "invalid blogpost category" do
    blogpost = Blogpost.new( title: 'Test blogpost 01', author: 'Max Delaney', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end

  test "invalid blogpost author" do
    blogpost = Blogpost.new( title: 'Test blogpost 01', category: 'Weather Alert', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end

  test "invalid blogpost image url" do
    blogpost = Blogpost.new( title: 'Test blogpost 01', category: 'Weather Alert', author: 'Max Delaney')
    assert_not blogpost.save
  end

  #validation tests, minimum input tests.
  test "to short blogpost title" do
    blogpost = Blogpost.new(title: 'Test', category: 'Weather Alert', author: 'Max Delaney', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end

  test "to short blogpost category" do
    blogpost = Blogpost.new(title: 'Test blogpost 01', category: 'Weather', author: 'Max Delaney', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end

  test "to short blogpost author" do
    blogpost = Blogpost.new(title: 'Test blogpost 01', category: 'Weather Alert', author: 'Bob', image_url: 'https://previews.123rf.com/images/trendobjects/trendobjects1406/trendobjects140600059/29307450-bad-weather-caution-warning-sign.jpg')
    assert_not blogpost.save
  end
end
