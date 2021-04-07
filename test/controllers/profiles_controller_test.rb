require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get profiles_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count', 1) do
      post profiles_url, params: { profile: { id: 1, address: "23 Viridin Drive", firstname: "Greg", lastname: "Nivile", user_id: 2 } }
      #profile = Profile.create(id: 1, firstname: "Greg", lastname: "Nivile", address: "23 Viridin Drive", user_id: 2)
      #post profiles_url, params: { profile: { id: profile.id, address: profile.address, firstname: profile.firstname, lastname: profile.lastname, user_id: profile.user_id } }
    end

    #@request.env['devise.mapping'] = Devise.mappings[:user]
    #sign_in users(:one)

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { address: @profile.address, firstname: @profile.firstname, lastname: @profile.lastname, user_id: @profile.user_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
