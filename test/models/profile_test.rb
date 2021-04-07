require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid profile" do
    profile = Profile.new(firstname: "Jerry", lastname: "Browne", address: "59 Clint Drive", user_id: 1)
    assert profile.valid?
  end

  #invalid tests, missing a required parameter.
  test "invalid profile" do
    profile = Profile.new()
    assert_not profile.save
  end

  test "invalid profile user id" do
    profile = Profile.new(firstname: "Jerry", lastname: "Browne", address: "59 Clint Drive")
    assert_not profile.save
  end

  test "invalid profile first name" do
    profile = Profile.new(lastname: "Browne", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end
  
  test "invalid profile last name" do
    profile = Profile.new(firstname: "Jerry", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end

  test "invalid profile address" do
    profile = Profile.new(firstname: "Jerry", lastname: "Browne", user_id: 1)
    assert_not profile.save
  end

  #validation tests, minimum input tests.
  test "to short profile first name" do
    profile = Profile.new(firstname: "Amy", lastname: "Smith", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end
  
  test "to short profile last name" do
    profile = Profile.new(firstname: "Jerry", lastname: "Vue", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end

  test "to short profile address" do
    profile = Profile.new(firstname: "Jerry", lastname: "Browne", address: "Lidi", user_id: 1)
    assert_not profile.save
  end

  #validation tests, maximum input tests.
  test "to long profile first name" do
    profile = Profile.new(firstname: "Hubert Von Wolfstern Tristur", lastname: "Smith", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end
  
  test "to long profile last name" do
    profile = Profile.new(firstname: "Jerry", lastname: "Wolfeschlegelsteinhausenbergerdorff", address: "59 Clint Drive", user_id: 1)
    assert_not profile.save
  end

  test "to long profile address" do
    profile = Profile.new(firstname: "Jerry", lastname: "Browne", address: "Ap #867-859 Sit Rd. Azusa New York 39531", user_id: 1)
    assert_not profile.save
  end

  
  



end
